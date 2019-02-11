//
//  ToneVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit
import YouTubePlayer

class ToneVC: UIViewController {
    
    struct ToneStruct{
        let toneImg : UIImage
        let toneDesc : String
        let toneSampleWord : String
        let videoId : String
    }
    
    var tones : [ToneStruct] = []
    var selectedToneId = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setTonesData()
        playerView.makeRounded(cornerRadius: nil)
        setPlayer(videoId: tones[selectedToneId].videoId)
    }
    
    @IBAction func changeToneAction(_ sender: UIButton) {
        selectedToneId = sender.tag
        let selectedTone = tones[selectedToneId]
        toneImgView.image = selectedTone.toneImg
        descLbl.text = selectedTone.toneDesc
        sampleWordLbl.text = selectedTone.toneSampleWord
        setPlayer(videoId: selectedTone.videoId)
    }
    
    @IBOutlet weak var toneImgView: UIImageView!
    @IBOutlet weak var descLbl: UILabel!
    @IBOutlet weak var sampleWordLbl: UILabel!
    @IBOutlet weak var playerView: YouTubePlayerView!
    
    func setTonesData() {
        let tone0 = ToneStruct(toneImg: #imageLiteral(resourceName: "tone4"), toneDesc: "짧고 가볍게 내는 성조", toneSampleWord: "吗 ma 의문조사", videoId: defualtURL)
        let tone1 = ToneStruct(toneImg: #imageLiteral(resourceName: "tone1"), toneDesc: "평상시 자신의 목소리 톤에서 한톤 높은 음에서 시작하여 같은 높이로 유지하는 성조", toneSampleWord: "妈 mā 엄마", videoId: "Ni2PQvYc868")
        let tone2 = ToneStruct(toneImg: #imageLiteral(resourceName: "tone2"), toneDesc: "평상시의 음인 중간 정도 음에서 시작하여 가장 높은 음까지 빠르게 끌어올리는 성조  (한국어의 반문 형식에서 많이 쓰이는 “네?”와 같이 끝을 올리듯이 발음)", toneSampleWord: "嘛 má (식물)마", videoId: "Wux7JU6WaqU")
        let tone3 = ToneStruct(toneImg: #imageLiteral(resourceName: "tone3"), toneDesc: "평상시 보다 약간 낮은 음에서 시작하여 가장 낮은 음까지 내려갔다가 다시 높은 음으로 끌어올리는 성조 (한국어에서 무엇인가를 깨닫거나 생각났을 때 표현하는 “아~”와 같이 발음)", toneSampleWord: "马 mǎ 말", videoId: "eM7XXZAng0w")
        let tone4 = ToneStruct(toneImg: #imageLiteral(resourceName: "tone4"), toneDesc: "가장 높은 음에서 시작하여 가장 늦은 음으로 급격히 내려오는 성조 (한국어에서 어떤 물체에 부딪혔을때 “아!”와 같이 소리내는 듯이 발음)", toneSampleWord: "骂 mà 욕하다", videoId: "htgIs6deMeo")
        tones = [tone0, tone1, tone2, tone3, tone4];
    }
    
    func setPlayer(videoId : String){
        playerView.playerVars = [
            "playsinline": "0",
            "controls": "1",
            "showinfo": "0"
            ] as YouTubePlayerView.YouTubePlayerParameters
        playerView.loadVideoID(videoId)
    }
}
