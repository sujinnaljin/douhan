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
    var conversationPath : (sec : Int, row : Int)?
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame : .zero)
        if let conversationPath_ = conversationPath {
            goToDetail(sec: conversationPath_.sec, row: conversationPath_.row)
        }
    }
    
    func goToDetail(sec : Int, row : Int){
        let mainStroyboard = UIStoryboard(name: "Main", bundle: nil)
        if let conversationDetailVC = mainStroyboard.instantiateViewController(withIdentifier:ConversationDetailVC.reuseIdentifier) as? ConversationDetailVC {
             conversationDetailVC.conversationPath = (sec, row)
            self.navigationController?.pushViewController(conversationDetailVC, animated: true)
        }
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
       goToDetail(sec: indexPath.section, row: indexPath.row)
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
