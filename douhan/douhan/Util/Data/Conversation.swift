//
//  Conversation.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

struct ConversationSection {
    let title : String
    let conversations : [Conversation]
}

struct Conversation {
    let title : String
    let videoUrl : String
    let script : [Script]
}

struct Script {
    let speaker : UIImage
    let content : String
    let pinyin : String
}
