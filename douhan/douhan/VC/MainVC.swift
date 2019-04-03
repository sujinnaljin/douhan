//
//  MainVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit
import CoreSpotlight
import MobileCoreServices

class MainVC: UIViewController {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var practicePronounceBtn: UIButton!
    @IBOutlet weak var practiceConversationBtn: UIButton!
    
    
    override func restoreUserActivityState(_ activity: NSUserActivity) {
        if activity.activityType == CSSearchableItemActionType, let info = activity.userInfo, let selectedIdentifier = info[CSSearchableItemActivityIdentifier] as? String {
            
            let mainStroyboard = UIStoryboard(name: "Main", bundle: nil)
            if let conversationVC = mainStroyboard.instantiateViewController(withIdentifier: ConversationVC.reuseIdentifier) as? ConversationVC, let conversationDetailVC = mainStroyboard.instantiateViewController(withIdentifier:ConversationDetailVC.reuseIdentifier) as? ConversationDetailVC {
                let sec = Int(selectedIdentifier.split(separator: ":")[0].description) ?? 0
                let row = Int(selectedIdentifier.split(separator: ":")[1].description) ?? 0
                conversationDetailVC.conversationPath = (sec, row)
                navigationController?.pushViewController(conversationDetailVC, animated: true)
                let stackCount = navigationController?.viewControllers.count ?? 0
                let addIndex = stackCount - 1
                navigationController?.viewControllers.insert(conversationVC, at: addIndex)
                 print("Selected Identifier: \(sec), \(row)")
            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLbl.adjustsFontSizeToFitWidth = true
        practicePronounceBtn.titleLabel?.adjustsFontSizeToFitWidth = true
        practiceConversationBtn.titleLabel?.adjustsFontSizeToFitWidth = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.navigationBar.isHidden = false
    }
    
}
