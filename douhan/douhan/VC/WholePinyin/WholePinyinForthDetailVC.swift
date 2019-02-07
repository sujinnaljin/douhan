//
//  WholePinyinForthDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class WholePinyinForthDetailVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var biao: HanyuBtn!
    @IBOutlet weak var bie: HanyuBtn!
    @IBOutlet weak var piao: HanyuBtn!
    @IBOutlet weak var pie: HanyuBtn!
    @IBOutlet weak var miao: HanyuBtn!
    @IBOutlet weak var mie: HanyuBtn!
    @IBOutlet weak var miu: HanyuBtn!
    @IBOutlet weak var diao: HanyuBtn!
    @IBOutlet weak var die: HanyuBtn!
    @IBOutlet weak var diu: HanyuBtn!
    @IBOutlet weak var tiao: HanyuBtn!
    @IBOutlet weak var tie: HanyuBtn!
    @IBOutlet weak var niao: HanyuBtn!
    @IBOutlet weak var nie: HanyuBtn!
    @IBOutlet weak var niu: HanyuBtn!
    @IBOutlet weak var lia: HanyuBtn!
    @IBOutlet weak var liao: HanyuBtn!
    @IBOutlet weak var lie: HanyuBtn!
    @IBOutlet weak var liu: HanyuBtn!
    @IBOutlet weak var jia: HanyuBtn!
    @IBOutlet weak var jiao: HanyuBtn!
    @IBOutlet weak var jie: HanyuBtn!
    @IBOutlet weak var jiu: HanyuBtn!
    @IBOutlet weak var qia: HanyuBtn!
    @IBOutlet weak var qiao: HanyuBtn!
    @IBOutlet weak var qie: HanyuBtn!
    @IBOutlet weak var qiu: HanyuBtn!
    @IBOutlet weak var xia: HanyuBtn!
    @IBOutlet weak var xiao: HanyuBtn!
    @IBOutlet weak var xie: HanyuBtn!
    @IBOutlet weak var xiu: HanyuBtn!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
    }
    
    func setHanyuBtn(){
        
        let biaoBtn = (biao, Hanyu(hanyu: "biao", koreanPronounce: "삐아오", desc: "", videoUrl: "wib_jutL3SU"))
        let bieBtn = (bie, Hanyu(hanyu: "bie", koreanPronounce: "삐에", desc: "", videoUrl: "wib_jutL3SU"))
        let piaoBtn = (piao, Hanyu(hanyu: "paio", koreanPronounce: "피아오", desc: "", videoUrl: "wib_jutL3SU"))
        let pieBtn = (pie, Hanyu(hanyu: "pie", koreanPronounce: "피에", desc: "", videoUrl: "wib_jutL3SU"))
        let miaoBtn = (miao, Hanyu(hanyu: "miao", koreanPronounce: "미아오", desc: "", videoUrl: "wib_jutL3SU"))
        let mieBtn = (mie, Hanyu(hanyu: "mie", koreanPronounce: "미에", desc: "", videoUrl: "wib_jutL3SU"))
        let miuBtn = (miu, Hanyu(hanyu: "miu", koreanPronounce: "미(어)우", desc: "", videoUrl: "wib_jutL3SU"))
        let diaoBtn = (diao, Hanyu(hanyu: "diao", koreanPronounce: "띠아오", desc: "", videoUrl: "wib_jutL3SU"))
        let dieBtn = (die, Hanyu(hanyu: "die", koreanPronounce: "띠에", desc: "", videoUrl: "wib_jutL3SU"))
        let diuBtn = (diu, Hanyu(hanyu: "diu", koreanPronounce: "띠(어)우", desc: "", videoUrl: "wib_jutL3SU"))
        let tiaoBtn = (tiao, Hanyu(hanyu: "tiao", koreanPronounce: "티아오", desc: "", videoUrl: "wib_jutL3SU"))
        let tieBtn = (tie, Hanyu(hanyu: "tie", koreanPronounce: "티에", desc: "", videoUrl: "wib_jutL3SU"))
        let niaoBtn = (niao, Hanyu(hanyu: "niao", koreanPronounce: "니아오", desc: "", videoUrl: "wib_jutL3SU"))
        let nieBtn = (nie, Hanyu(hanyu: "nie", koreanPronounce: "니에", desc: "", videoUrl: "wib_jutL3SU"))
        let niuBtn = (niu, Hanyu(hanyu: "niu", koreanPronounce: "니(어)우", desc: "", videoUrl: "wib_jutL3SU"))
        let liaBtn = (lia, Hanyu(hanyu: "lia", koreanPronounce: "리아", desc: "", videoUrl: "wib_jutL3SU"))
        let liaoBtn = (liao, Hanyu(hanyu: "liao", koreanPronounce: "리라오", desc: "", videoUrl: "wib_jutL3SU"))
        let lieBtn = (lie, Hanyu(hanyu: "lie", koreanPronounce: "리에", desc: "", videoUrl: "wib_jutL3SU"))
        let liuBtn = (liu, Hanyu(hanyu: "liu", koreanPronounce: "리(어)우", desc: "", videoUrl: "wib_jutL3SU"))
        let jiaBtn = (jia, Hanyu(hanyu: "jia", koreanPronounce: "지아", desc: "", videoUrl: "wib_jutL3SU"))
        let jiaoBtn = (jiao, Hanyu(hanyu: "jiao", koreanPronounce: "지아오", desc: "", videoUrl: "wib_jutL3SU"))
        let jieBtn = (jie, Hanyu(hanyu: "jie", koreanPronounce: "지에", desc: "", videoUrl: "wib_jutL3SU"))
        let jiuBtn = (jiu, Hanyu(hanyu: "jiu", koreanPronounce: "지(어)우", desc: "", videoUrl: "wib_jutL3SU"))
        let qiaBtn = (qia, Hanyu(hanyu: "qia", koreanPronounce: "치아", desc: "", videoUrl: "wib_jutL3SU"))
        let qiaoBtn = (qiao, Hanyu(hanyu: "qiao", koreanPronounce: "치아오", desc: "", videoUrl: "wib_jutL3SU"))
        let qieBtn = (qie, Hanyu(hanyu: "qie", koreanPronounce: "치에", desc: "", videoUrl: "wib_jutL3SU"))
        let qiuBtn = (qiu, Hanyu(hanyu: "qiu", koreanPronounce: "치(어)우", desc: "", videoUrl: "wib_jutL3SU"))
        let xiaBtn = (xia, Hanyu(hanyu: "xia", koreanPronounce: "시아", desc: "", videoUrl: "wib_jutL3SU"))
        let xiaoBtn = (xiao, Hanyu(hanyu: "xiao", koreanPronounce: "시아오", desc: "", videoUrl: "wib_jutL3SU"))
        let xieBtn = (xie, Hanyu(hanyu: "xie", koreanPronounce: "시에", desc: "", videoUrl: "wib_jutL3SU"))
        let xiuBtn = (xiu, Hanyu(hanyu: "xiu", koreanPronounce: "시(어)우", desc: "", videoUrl: "wib_jutL3SU"))
        
        let buttons = [biaoBtn, bieBtn, piaoBtn, pieBtn, miaoBtn, mieBtn, miuBtn, diaoBtn, dieBtn, diuBtn, tiaoBtn, tieBtn, niaoBtn, nieBtn, niuBtn, liaBtn, liaoBtn, lieBtn
            , liuBtn, jiaBtn, jiaoBtn, jieBtn, jiuBtn, qiaBtn, qiaoBtn, qieBtn, qiuBtn, xiaBtn, xiaoBtn, xieBtn, xiuBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }
    
}

