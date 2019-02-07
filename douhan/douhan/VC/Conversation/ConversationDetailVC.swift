//
//  ConversationDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit
import YouTubePlayer

class ConversationDetailVC: UIViewController {
    
    @IBOutlet weak var playerView: YouTubePlayerView!
    @IBOutlet weak var tableView: UITableView!
    var conversation : Conversation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setPlayer()
        setTableView()
        self.navigationItem.title = conversation.title
    }
    
    func setPlayer(){
        playerView.playerVars = [
            "playsinline": "1",
            "controls": "1",
            "showinfo": "0"
            ] as YouTubePlayerView.YouTubePlayerParameters
        playerView.loadVideoID(conversation.videoUrl)
    }
    
    func setTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame : .zero)
    }
}


extension ConversationDetailVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversation.script.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ScriptTVCell.reuseIdentifier, for: indexPath) as! ScriptTVCell
        cell.configure(data: conversation.script[indexPath.row])
        return cell
    }
}
