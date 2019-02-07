//
//  DataCenter.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import Foundation
class DataCenter {
    
    struct StaticInstance {
        static var instance: DataCenter?
    }
    
    class func shared() -> DataCenter {
        if StaticInstance.instance == nil {
            StaticInstance.instance = DataCenter()
        }
        return StaticInstance.instance!
    }
    
    var conversations :[ConversationSection] = []
    
    init(){
        let firstSecFisrtConversation = Conversation(title: "老师好", videoUrl: "wib_jutL3SU", script:[Script(speaker: #imageLiteral(resourceName: "sujin"), content: "老师好！", pinyin: "Lǎoshī hǎo!"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "大家好！", pinyin: "Dàjiā hǎo!")])
        
        let firstSecSecondConversation =
            Conversation(title: "你叫什么名字?", videoUrl: "wib_jutL3SU", script: [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "你好！", pinyin: "Nǐ hǎo!"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "你好！你叫什么名字?", pinyin: "Nǐ hǎo! Nǐ jiào shénme míngzi?"), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "我叫明明。你呢?", pinyin: "Wǒ jiào míngming. Nǐne?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "我叫丽丽。再见！", pinyin: "Wǒ jiào lìli. Zàijiàn!"), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "再见！", pinyin: "Zàijiàn!")])
        
        
        let secondSecFisrtConversation = Conversation(title: "你家有几口人?", videoUrl: "wib_jutL3SU", script: [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "你家有几口人?", pinyin: "Nǐ jiā yǒu jǐ kǒu rén?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "我家有四口人， 爸爸，妈妈，妹妹和我。", pinyin: "Wǒ jiā yǒu sì kǒu rén, bàba, māma, mèimei hé wǒ."), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "她几岁?", pinyin: "Tā jǐ suì?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "她八岁。", pinyin: "Tā bā suì.")])
        
        let secondSecSecondConversation =
            Conversation(title: "你有哥哥吗?", videoUrl: "wib_jutL3SU", script:  [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "你有哥哥吗?", pinyin: "Nǐ yǒu gēgē ma?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "我没有哥哥。 你呢?", pinyin: "Wǒ méiyǒu gēge. Nǐne?"), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "我有两个哥哥。", pinyin: "Wǒ yǒu liǎngge gēge.")])
        
        let thirdSecFisrtConversation = Conversation(title: "这是什么?", videoUrl: "", script:  [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "这是什么?", pinyin: "Zhè shì shénme?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "这是书。", pinyin: "Zhè shì shū."), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "这是谁的书?", pinyin: "Zhè shì shéi de shū?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "这是我的书。那是你的书吗?", pinyin: "Zhè shì wǒ de shū. Nà shì nǐ de shū ma?"), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "那不是我的书。", pinyin: "Nà búshì wǒ de shū.")])
        
        let thirdSecSecondConversation =
            Conversation(title: " 你是哪国人?", videoUrl: "", script:       [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "你是哪国人?", pinyin: "Nǐ shì nǎ guórén?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "我是韩国人。", pinyin: "Wǒ shì hánguórén."), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "他也是韩国人吗?", pinyin: "Tā yěshì hánguórén ma?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "不是。他是中国人。", pinyin: "Búshì. Tā shì zhōngguórén.")])
        
        let forthSecFisrtConversation = Conversation(title: "你去哪儿?", videoUrl: "", script:   [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "现在你去哪儿?", pinyin: "Xiànzài nǐ qù nǎ'er?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "我去图书馆。图书馆怎么走?", pinyin: "Wǒ qù túshūguǎn. Túshūguǎn zěnme zǒu?"), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "一直往前走。", pinyin: "Yìzhí wǎngqián zǒu."), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "谢谢！", pinyin: "Xièxie!"), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "不客气。", pinyin: "Búkèqi.")])
        
        let forthSecSecondConversation =
            Conversation(title: "离这儿远吗?", videoUrl: "", script:
                [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "你要去哪儿?", pinyin: "Nǐ yào qù nǎ'er?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "我要去天安门。离这儿远吗?", pinyin: "Wǒ yào qù tiān'ānmén. Lí zhè'er yuǎn ma?"), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "不远。五分钟就到。", pinyin: "Bù yuǎn. Wǔfēnzhōng jiù dào"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "好的。", pinyin: "Hǎo de.")])
        
        
        let fifthSecFisrtConversation = Conversation(title: "现在几点?", videoUrl: "", script:
            [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "现在几点?", pinyin: "Xiànzài jǐ diǎn?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "早上九点半。", pinyin: "Zǎoshang jiǔ diǎn bàn."), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "今天几月几号?", pinyin: "Jīntiān jǐ yuè jǐ hào?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "今天是八月十号星期三。", pinyin: "Jīntiān shì bā yuè shí hào xīngqísān.")])
        
        let fifthSecSecondConversation =
            Conversation(title: "最近忙不忙?", videoUrl: "", script:  [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "最近忙不忙?", pinyin: "Zuìjìn máng bù máng?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "不太忙。为什么?", pinyin: "Bú tài máng. Wèishéme?"), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "星期天你有没有空儿?", pinyin: "Xīngqītiān nǐ yǒu méiyǒu kòng er?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "什么时候?", pinyin: "Shénme shíhou?"), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "八点，怎么样?", pinyin: "Bā diǎn, zěnmeyàng?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "好。", pinyin: "Hǎo.")])
        
        let sixthSecFisrtConversation = Conversation(title: "你会说汉语吗?", videoUrl: "", script: [Script(speaker: #imageLiteral(resourceName: "sujin"), content: "你会说汉语吗?", pinyin: "Nǐ huì shuō hànyǔ ma?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "我会说汉语。", pinyin: "Wǒ huì shuō hànyǔ."), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "那你会说英语吗?", pinyin: "Nà nǐ huì shuō yīngyǔ ma?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "我不会说英语。", pinyin: "Wǒ bú huì shuō yīngyǔ.")])
        
        let sixthSecSecondConversation =
            Conversation(title: "一点儿也不会。", videoUrl: "", script:[Script(speaker: #imageLiteral(resourceName: "sujin"), content: "你会游泳吗?", pinyin: "Nǐ huì yóuyǒng ma?"), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "一点儿也不会。", pinyin: "Yīdiǎn er yě bú huì."), Script(speaker: #imageLiteral(resourceName: "sujin"), content: "那我可以教你游泳。", pinyin: "Nà wǒ kěyǐ jiào nǐ yóuyǒng."), Script(speaker: #imageLiteral(resourceName: "dayoung"), content: "谢谢。", pinyin: "Xièxii.")])
        
        let firstConversationSec = ConversationSection(title : "제 1과 你好!", conversations: [firstSecFisrtConversation, firstSecSecondConversation] )
        let secondConversationSec = ConversationSection(title : "제 2과 你家有几口人?", conversations: [secondSecFisrtConversation, secondSecSecondConversation] )
        let thirdConversationSec = ConversationSection(title : "제 3과 这是什么?", conversations: [thirdSecFisrtConversation, thirdSecSecondConversation] )
        let forthConversationSec = ConversationSection(title : "제 4과 你去哪儿?", conversations: [forthSecFisrtConversation, forthSecSecondConversation] )
        let fifthConversationSec = ConversationSection(title : "제 5과  现在几点?", conversations: [fifthSecFisrtConversation, fifthSecSecondConversation] )
        let sixthConversationSec = ConversationSection(title : "제 6과 你会说汉语吗?", conversations: [sixthSecFisrtConversation, sixthSecSecondConversation] )
        
        conversations = [firstConversationSec, secondConversationSec, thirdConversationSec, forthConversationSec, fifthConversationSec, sixthConversationSec]
    }
    
}
