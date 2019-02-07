//
//  ShengmuDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//


import UIKit
import YouTubePlayer
import AudioKit
import AudioKitUI

class ShengmuDetailVC: UIViewController, YouTubePlayerDelegate{
    
    var micMixer: AKMixer!
    var recorder: AKNodeRecorder!
    var player: AKPlayer!
    var tape: AKAudioFile!
    var micBooster: AKBooster!
    var moogLadder: AKMoogLadder!
    var mainMixer: AKMixer!
    
    var mic = AKMicrophone()
    
    var state = State.readyToRecord
    
    @IBOutlet private weak var resetButton: UIButton!
    @IBOutlet private weak var mainButton: UIButton!
    @IBOutlet weak var playerView: YouTubePlayerView!
    @IBOutlet weak var hanyuLbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!
    
    enum State {
        case readyToRecord
        case recording
        case readyToPlay
        case playing
    }
    
    var selectedHanyu : Hanyu!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setYoutubePlayer()
        setupButtonNames()
        setupUIForRecording()
        playerView.delegate = self
        hanyuLbl.text = "\(selectedHanyu.hanyu)[\(selectedHanyu.koreanPronounce)]"
        descLbl.text = selectedHanyu.desc
        descLbl.adjustsFontSizeToFitWidth = true
    }
    
   func setYoutubePlayer(){
        playerView.playerVars = [
            "playsinline": "1",
            "controls": "1",
            "showinfo": "0"
            ] as YouTubePlayerView.YouTubePlayerParameters
        playerView.loadVideoID(selectedHanyu.videoUrl)
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        
        // Clean tempFiles !
        AKAudioFile.cleanTempDirectory()
        
        // Session settings
        AKSettings.bufferLength = .medium
        
        do {
            try AKSettings.setSession(category: .playAndRecord, with: .allowBluetoothA2DP)
        } catch {
            AKLog("Could not set session category.")
        }
        
        AKSettings.defaultToSpeaker = true
        
        // Patching
        let monoToStereo = AKStereoFieldLimiter(mic, amount: 1)
        micMixer = AKMixer(monoToStereo)
        micBooster = AKBooster(micMixer)
        
        // Will set the level of microphone monitoring
        micBooster.gain = 0
        recorder = try? AKNodeRecorder(node: micMixer)
        if let file = recorder.audioFile {
            player = AKPlayer(audioFile: file)
        }
        player.isLooping = true
        player.completionHandler = playingEnded
        
        moogLadder = AKMoogLadder(player)
        
        mainMixer = AKMixer(moogLadder, micBooster)
        
        AudioKit.output = mainMixer
        do {
            try AudioKit.start()
        } catch {
            AKLog("AudioKit did not start!")
        }
    }
    
    
    override func viewWillDisappear(_ animated: Bool) {
        do {
            try AudioKit.stop()
        } catch {
            AKLog("AudioKit did not start!")
        }
    }
    
}
extension ShengmuDetailVC {
  
   
    
    // CallBack triggered when playing has ended
    // Must be seipatched on the main queue as completionHandler
    // will be triggered by a background thread
    func playingEnded() {
        DispatchQueue.main.async {
            self.setupUIForPlaying ()
        }
    }
    
    @IBAction func mainButtonTouched(sender: UIButton) {
        switch state {
        case .readyToRecord :
            mainButton.setImage(#imageLiteral(resourceName: "stop"), for: .normal)
            state = .recording
            // microphone will be monitored while recording
            // only if headphones are plugged
            if AKSettings.headPhonesPlugged {
                micBooster.gain = 1
            }
            do {
                try recorder.record()
            } catch { AKLog("Errored recording.") }
            
        case .recording :
            // Microphone monitoring is muted
            mainButton.setImage(#imageLiteral(resourceName: "play"), for: .normal)
            micBooster.gain = 0
            tape = recorder.audioFile!
            player.load(audioFile: tape)
            
            if let _ = player.audioFile?.duration {
                recorder.stop()
                tape.exportAsynchronously(name: "TempTestFile.m4a",
                                          baseDir: .documents,
                                          exportFormat: .m4a) {_, exportError in
                                            if let error = exportError {
                                                AKLog("Export Failed \(error)")
                                            } else {
                                                AKLog("Export succeeded")
                                            }
                }
                setupUIForPlaying()
            }
        case .readyToPlay :
            player.play()
            state = .playing
            mainButton.setImage(#imageLiteral(resourceName: "pause"), for: .normal)
            //plot?.node = player
            
        case .playing :
            mainButton.setImage(#imageLiteral(resourceName: "play"), for: .normal)
            player.stop()
            setupUIForPlaying()
        }
    }
    
    struct Constants {
        static let empty = ""
    }
    
    func setupButtonNames() {
        resetButton.setTitle(Constants.empty, for: UIControl.State.disabled)
        mainButton.setTitle(Constants.empty, for: UIControl.State.disabled)
    }
    
    func setupUIForRecording () {
        state = .readyToRecord
        mainButton.setImage(#imageLiteral(resourceName: "record"), for: .normal)
        mainButton.setTitle("Record", for: .normal)
        resetButton.isEnabled = false
        resetButton.isHidden = true
        micBooster.gain = 0
    }
    
    func setupUIForPlaying () {
        mainButton.setTitle("Play", for: .normal)
         mainButton.setImage(#imageLiteral(resourceName: "play"), for: .normal)
        state = .readyToPlay
        resetButton.isHidden = false
        resetButton.isEnabled = true
        player.isLooping = false
    }

    @IBAction func resetButtonTouched(sender: UIButton) {
        player.stop()
        do {
            try recorder.reset()
        } catch { AKLog("Errored resetting.") }
        
        setupUIForRecording()
    }
    
}
