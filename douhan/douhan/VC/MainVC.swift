//
//  MainVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    @IBOutlet weak var titleLbl: UILabel!
    @IBOutlet weak var practicePronounceBtn: UIButton!
    @IBOutlet weak var practiceConversationBtn: UIButton!
    
    
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
