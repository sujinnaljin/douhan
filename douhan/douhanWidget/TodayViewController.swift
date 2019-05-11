//
//  TodayViewController.swift
//  douhanWidget
//
//  Created by 강수진 on 11/05/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit
import NotificationCenter


class TodayViewController: UIViewController, NCWidgetProviding {
    
    class HanyuWord{
        let hanyu : String
        let pinyin : String
        let meaning : String
        
        init(hanyu : String, pinyin : String, meaning : String){
            self.hanyu = hanyu
            self.pinyin = pinyin
            self.meaning = meaning
        }
    }
    
    @IBOutlet weak var chineseLabel: UILabel!
    @IBOutlet weak var pinyinLabel: UILabel!
    @IBOutlet weak var meaningLabel: UILabel!
    
    var todayWord :[HanyuWord] = []
   
    override func viewDidLoad() {
        super.viewDidLoad()
        //////////단어 추가/////////
        addWords()
        let randomIdx = Int.random(in: 0 ... todayWord.count-1)
        let selectedWord = todayWord[randomIdx]
        setWord(selectedWord)
        // Do any additional setup after loading the view from its nib.
    }
        
    func widgetPerformUpdate(completionHandler: (@escaping (NCUpdateResult) -> Void)) {
        // Perform any setup necessary in order to update the view.
        
        // If an error is encountered, use NCUpdateResult.Failed
        // If there's no update required, use NCUpdateResult.NoData
        // If there's an update, use NCUpdateResult.NewData
        
        completionHandler(NCUpdateResult.newData)
    }
    
    func addWords(){
        let teacherWord = HanyuWord(hanyu: "老师", pinyin: "Lǎoshī", meaning: "선생님")
        let nameWord = HanyuWord(hanyu: "名字", pinyin: "míngzi", meaning: "이름")
        let swimWord = HanyuWord(hanyu: "游泳", pinyin: "yóuyǒng", meaning: "수영")
        todayWord = [teacherWord, nameWord, swimWord]
    }
    
    func setWord(_ selectedWord : HanyuWord){
        chineseLabel.text = selectedWord.hanyu
        pinyinLabel.text = selectedWord.pinyin
        meaningLabel.text = selectedWord.meaning
    }
    
}
