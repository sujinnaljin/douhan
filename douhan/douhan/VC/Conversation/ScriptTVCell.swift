//
//  ScriptTVCell.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class ScriptTVCell: UITableViewCell {
    
    @IBOutlet weak var titleImg: UIImageView!
    @IBOutlet weak var contentLbl: UILabel!
    @IBOutlet weak var pinyinLbl: UILabel!
    
    func configure(data : Script) {
        titleImg.image = data.speaker
        contentLbl.text = data.content
        pinyinLbl.text = data.pinyin
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        titleImg.makeRounded(cornerRadius: nil)
    }
    
}
