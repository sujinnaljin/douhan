//
//  HanyuBtn.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class HanyuBtn : UIButton {
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setBtnClickEvent()
    }
    var delegate : SelectHanyuDelegate?
    var hanyu : Hanyu?
    
    func setBtnClickEvent() {
        self.addTarget(self, action: #selector(HanyuBtn.touchBtn(_:)), for: UIControl.Event.touchUpInside)
    }
    
    @objc func touchBtn(_ sender: HanyuBtn){
        if let hanyu_ = sender.hanyu {
            delegate?.tap(hanyu_)
        }
    }
}

protocol SelectHanyuDelegate {
    func tap(_ hanyu : Hanyu)
}

extension SelectHanyuDelegate where Self : UIViewController {
    func tap(_ hanyu : Hanyu) {
        let mainStroyboard = UIStoryboard(name: "Main", bundle: nil)
        if let shengmuDetailVC = mainStroyboard.instantiateViewController(withIdentifier:ShengmuDetailVC.reuseIdentifier) as? ShengmuDetailVC {
            shengmuDetailVC.selectedHanyu = hanyu
            self.navigationController?.pushViewController(shengmuDetailVC, animated: true)
        }
    }
}

struct Hanyu {
    let hanyu : String
    let koreanPronounce : String
    let desc : String
    let videoUrl : String
}
