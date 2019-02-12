//
//  ConversationVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class ConversationVC: UIViewController {
    let conversationSecs = DataCenter.shared().conversations
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame : .zero)
    }
}

extension ConversationVC : UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return conversationSecs.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return conversationSecs[section].title
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return conversationSecs[section].conversations.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ConversationCell", for: indexPath)
        let section = indexPath.section
        cell.textLabel?.text = conversationSecs[section].conversations[indexPath.row].title
        cell.textLabel?.font = UIFont(name: "LaoSangamMN", size: 17)!
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainStroyboard = UIStoryboard(name: "Main", bundle: nil)
        if let conversationDetailVC = mainStroyboard.instantiateViewController(withIdentifier:ConversationDetailVC.reuseIdentifier) as? ConversationDetailVC {
            let selectedConversation = conversationSecs[indexPath.section].conversations[indexPath.row]
            conversationDetailVC.conversation = selectedConversation
            self.navigationController?.pushViewController(conversationDetailVC, animated: true)
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
