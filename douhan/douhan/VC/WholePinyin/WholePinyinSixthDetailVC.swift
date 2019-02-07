//
//  WholePinyinSixthDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class WholePinyinSixthDetailVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var duo: HanyuBtn!
    @IBOutlet weak var dui: HanyuBtn!
    @IBOutlet weak var tuo: HanyuBtn!
    @IBOutlet weak var tui: HanyuBtn!
    @IBOutlet weak var nuo: HanyuBtn!
    @IBOutlet weak var luo: HanyuBtn!
    @IBOutlet weak var gua: HanyuBtn!
    @IBOutlet weak var guo: HanyuBtn!
    @IBOutlet weak var guai: HanyuBtn!
    @IBOutlet weak var gui: HanyuBtn!
    @IBOutlet weak var kua: HanyuBtn!
    @IBOutlet weak var kuo: HanyuBtn!
    @IBOutlet weak var kuai: HanyuBtn!
    @IBOutlet weak var hua: HanyuBtn!
    @IBOutlet weak var huo: HanyuBtn!
    @IBOutlet weak var huai: HanyuBtn!
    @IBOutlet weak var hui: HanyuBtn!
    @IBOutlet weak var zhuo: HanyuBtn!
    @IBOutlet weak var zhuai: HanyuBtn!
    @IBOutlet weak var zhui: HanyuBtn!
    @IBOutlet weak var chuo: HanyuBtn!
    @IBOutlet weak var chuai: HanyuBtn!
    @IBOutlet weak var chui: HanyuBtn!
    @IBOutlet weak var shuo: HanyuBtn!
    @IBOutlet weak var shuai: HanyuBtn!
    @IBOutlet weak var shui: HanyuBtn!
    @IBOutlet weak var ruo: HanyuBtn!
    @IBOutlet weak var rui: HanyuBtn!
    @IBOutlet weak var zuo: HanyuBtn!
    @IBOutlet weak var zui: HanyuBtn!
    @IBOutlet weak var cuo: HanyuBtn!
    @IBOutlet weak var cui: HanyuBtn!
    @IBOutlet weak var suo: HanyuBtn!
    @IBOutlet weak var sui: HanyuBtn!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setHanyuBtn()
        setBackBtn()
    }
    
    func setHanyuBtn(){
        let duoBtn = (duo, Hanyu(hanyu: "duo", koreanPronounce: "뚜어", desc: "", videoUrl: "wib_jutL3SU"))
        let duiBtn = (dui, Hanyu(hanyu: "dui", koreanPronounce: "뚜에이", desc: "", videoUrl: "wib_jutL3SU"))
        let tuoBtn = (tuo, Hanyu(hanyu: "tuo", koreanPronounce: "투어", desc: "", videoUrl: "wib_jutL3SU"))
        let tuiBtn = (tui, Hanyu(hanyu: "tui", koreanPronounce: "누어", desc: "", videoUrl: "wib_jutL3SU"))
        let nuoBtn = (nuo, Hanyu(hanyu: "nuo", koreanPronounce: "루어", desc: "", videoUrl: "wib_jutL3SU"))
        let luoBtn = (luo, Hanyu(hanyu: "luo", koreanPronounce: "꾸아", desc: "", videoUrl: "wib_jutL3SU"))
        let guaBtn = (gua, Hanyu(hanyu: "gua", koreanPronounce: "꾸어", desc: "", videoUrl: "wib_jutL3SU"))
        let guoBtn = (guo, Hanyu(hanyu: "guo", koreanPronounce: "꾸아이", desc: "", videoUrl: "wib_jutL3SU"))
        let guaiBtn = (guai, Hanyu(hanyu: "guai", koreanPronounce: "꾸에이", desc: "", videoUrl: "wib_jutL3SU"))
        let guiBtn = (gui, Hanyu(hanyu: "gui", koreanPronounce: "쿠아", desc: "", videoUrl: "wib_jutL3SU"))
        let kuaBtn = (kua, Hanyu(hanyu: "kua", koreanPronounce: "쿠어", desc: "", videoUrl: "wib_jutL3SU"))
        let kuoBtn = (kuo, Hanyu(hanyu: "kuo", koreanPronounce: "쿠아이", desc: "", videoUrl: "wib_jutL3SU"))
        let kuaiBtn = (kuai, Hanyu(hanyu: "kuai", koreanPronounce: "쿠에이", desc: "", videoUrl: "wib_jutL3SU"))
        let huaBtn = (hua, Hanyu(hanyu: "hua", koreanPronounce: "후아", desc: "", videoUrl: "wib_jutL3SU"))
        let huoBtn = (huo, Hanyu(hanyu: "huo", koreanPronounce: "후어", desc: "", videoUrl: "wib_jutL3SU"))
        let huaiBtn = (huai, Hanyu(hanyu: "huai", koreanPronounce: "후아이", desc: "", videoUrl: "wib_jutL3SU"))
        let huiBtn = (hui, Hanyu(hanyu: "hui", koreanPronounce: "후에이", desc: "", videoUrl: "wib_jutL3SU"))
        let zhuoBtn = (zhuo, Hanyu(hanyu: "zhuo", koreanPronounce: "주어", desc: "", videoUrl: "wib_jutL3SU"))
        let zhuaiBtn = (zhuai, Hanyu(hanyu: "zhuai", koreanPronounce: "주아이", desc: "", videoUrl: "wib_jutL3SU"))
        let zhuiBtn = (zhui, Hanyu(hanyu: "zhui", koreanPronounce: "주에이", desc: "", videoUrl: "wib_jutL3SU"))
        let chuoBtn = (chuo, Hanyu(hanyu: "chuo", koreanPronounce: "추어", desc: "", videoUrl: "wib_jutL3SU"))
        let chuaiBtn = (chuai, Hanyu(hanyu: "chuai", koreanPronounce: "추아이", desc: "", videoUrl: "wib_jutL3SU"))
        let chuiBtn = (chui, Hanyu(hanyu: "chui", koreanPronounce: "추에이", desc: "", videoUrl: "wib_jutL3SU"))
        let shuoBtn = (shuo, Hanyu(hanyu: "shuo", koreanPronounce: "수어", desc: "", videoUrl: "wib_jutL3SU"))
        let shuaiBtn = (shuai, Hanyu(hanyu: "shaui", koreanPronounce: "수아이", desc: "", videoUrl: "wib_jutL3SU"))
        let shuiBtn = (shui, Hanyu(hanyu: "shui", koreanPronounce: "수에이", desc: "", videoUrl: "wib_jutL3SU"))
        let ruoBtn = (ruo, Hanyu(hanyu: "ruo", koreanPronounce: "루어", desc: "", videoUrl: "wib_jutL3SU"))
        let ruiBtn = (rui, Hanyu(hanyu: "rui", koreanPronounce: "루에이", desc: "", videoUrl: "wib_jutL3SU"))
        let zuoBtn = (zuo, Hanyu(hanyu: "zuo", koreanPronounce: "쭈어", desc: "", videoUrl: "wib_jutL3SU"))
        let zuiBtn = (zui, Hanyu(hanyu: "zui", koreanPronounce: "쭈에이", desc: "", videoUrl: "wib_jutL3SU"))
        let cuoBtn = (cuo, Hanyu(hanyu: "cuo", koreanPronounce: "추어", desc: "", videoUrl: "wib_jutL3SU"))
        let cuiBtn = (cui, Hanyu(hanyu: "cui", koreanPronounce: "추에이", desc: "", videoUrl: "wib_jutL3SU"))
        let suoBtn = (suo, Hanyu(hanyu: "suo", koreanPronounce: "쑤어", desc: "", videoUrl: "wib_jutL3SU"))
        let suiBtn = (sui, Hanyu(hanyu: "sui", koreanPronounce: "쑤에이", desc: "", videoUrl: "wib_jutL3SU"))
        
        
        let buttons = [duoBtn, duiBtn, tuoBtn, tuiBtn, nuoBtn, luoBtn, guaBtn, guoBtn, guaiBtn, guiBtn, kuaBtn, kuoBtn, kuaiBtn, huaBtn, huoBtn, huaiBtn, huiBtn, zhuoBtn, zhuaiBtn, zhuiBtn, chuoBtn, chuaiBtn, chuiBtn, shuoBtn, shuaiBtn, shuiBtn, ruoBtn, ruiBtn, zuoBtn, zuiBtn, cuoBtn, cuiBtn, suoBtn, suiBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }
    
    
}
