//
//  ConversationDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit
import YouTubePlayer
import CoreSpotlight
import MobileCoreServices

class ConversationDetailVC: UIViewController {
    
    @IBOutlet weak var playerView: YouTubePlayerView!
    @IBOutlet weak var tableView: UITableView!
    var conversationPath : (sec : Int, row : Int)!
    var conversation : Conversation?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setPlayer()
        setTableView()
        conversation = DataCenter.shared().conversations[conversationPath.sec].conversations[conversationPath.row]
         self.navigationItem.title = conversation?.title ?? ""
         indexSearchableItems()
    }
    
    func setPlayer(){
        playerView.playerVars = [
            "playsinline": "1",
            "controls": "1",
            "showinfo": "0"
            ] as YouTubePlayerView.YouTubePlayerParameters
        playerView.loadVideoID(conversation?.videoUrl ?? "")
    }
    
    func setTableView(){
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame : .zero)
    }
}


extension ConversationDetailVC : UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        guard let conversation_ = conversation else {return 0}
        return conversation_.script.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ScriptTVCell.reuseIdentifier, for: indexPath) as! ScriptTVCell
        guard let conversation_ = conversation else {return cell}
        cell.configure(data: conversation_.script[indexPath.row])
        return cell
    }
}

extension ConversationDetailVC {
    func indexSearchableItems(){
        guard let conversation_ = conversation else {return}
        var searchableItems = [CSSearchableItem]()
        for (index, script) in conversation_.script.enumerated() {
            let searchItemAttributeSet = CSSearchableItemAttributeSet(itemContentType: kUTTypeText as String)
            searchItemAttributeSet.title = conversation_.title
            searchItemAttributeSet.contentDescription = script.content

            let searchableItem = CSSearchableItem(uniqueIdentifier: "\(conversationPath.sec):\(conversationPath.row):\(index)", domainIdentifier: "conversation", attributeSet: searchItemAttributeSet)
            searchableItems.append(searchableItem)
        }
        
        CSSearchableIndex.default().indexSearchableItems(searchableItems) { (error)  in
            if let error = error {
                print("Indexing error: \(error.localizedDescription)")
            } else {
                print("Search item successfully indexed!")
            }
        }
    }
}
