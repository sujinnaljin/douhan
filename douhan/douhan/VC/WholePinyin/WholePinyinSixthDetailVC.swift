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
        let duoBtn = (duo, Hanyu(hanyu: "duo", koreanPronounce: "뚜어", desc: "", videoUrl: "5ZVlAEFaDAQ"))
        let duiBtn = (dui, Hanyu(hanyu: "dui", koreanPronounce: "뚜에이", desc: "", videoUrl: defualtURL))
        let tuoBtn = (tuo, Hanyu(hanyu: "tuo", koreanPronounce: "투어", desc: "", videoUrl: "0pH3SFSS6bY"))
        let tuiBtn = (tui, Hanyu(hanyu: "tui", koreanPronounce: "투에이", desc: "", videoUrl: "jzEoNPpM5xY"))
        let nuoBtn = (nuo, Hanyu(hanyu: "nuo", koreanPronounce: "누어", desc: "", videoUrl: "dqu2Pq_hE3s"))
        let luoBtn = (luo, Hanyu(hanyu: "luo", koreanPronounce: "루어", desc: "", videoUrl: "WoXsVkxXpbA"))
        let guaBtn = (gua, Hanyu(hanyu: "gua", koreanPronounce: "꾸아", desc: "", videoUrl: "DTADlzddH5g"))
        let guoBtn = (guo, Hanyu(hanyu: "guo", koreanPronounce: "꾸어", desc: "", videoUrl: "Uxx5PpAv5Ow"))
        let guaiBtn = (guai, Hanyu(hanyu: "guai", koreanPronounce: "꾸아이", desc: "", videoUrl: "ArKDFBJxaxw"))
        let guiBtn = (gui, Hanyu(hanyu: "gui", koreanPronounce: "꾸에이", desc: "", videoUrl: "2YDrCqFuhtQ"))
        let kuaBtn = (kua, Hanyu(hanyu: "kua", koreanPronounce: "쿠아", desc: "", videoUrl: "A02644Ngpmg"))
        let kuoBtn = (kuo, Hanyu(hanyu: "kuo", koreanPronounce: "쿠어", desc: "", videoUrl: "ev4WJpwpTUc"))
        let kuaiBtn = (kuai, Hanyu(hanyu: "kuai", koreanPronounce: "쿠아이", desc: "", videoUrl: defualtURL))
        let huaBtn = (hua, Hanyu(hanyu: "hua", koreanPronounce: "후아", desc: "", videoUrl: "7FGE6s7Egiw"))
        let huoBtn = (huo, Hanyu(hanyu: "huo", koreanPronounce: "후어", desc: "", videoUrl: "PMwy3iiSrkI"))
        let huaiBtn = (huai, Hanyu(hanyu: "huai", koreanPronounce: "후아이", desc: "", videoUrl: "PIYluK7azak"))
        let huiBtn = (hui, Hanyu(hanyu: "hui", koreanPronounce: "후에이", desc: "", videoUrl: "W0rHY6wsPng"))
        let zhuoBtn = (zhuo, Hanyu(hanyu: "zhuo", koreanPronounce: "주어", desc: "", videoUrl: "3e_bLuc2i5g"))
        let zhuaiBtn = (zhuai, Hanyu(hanyu: "zhuai", koreanPronounce: "주아이", desc: "", videoUrl: defualtURL))
        let zhuiBtn = (zhui, Hanyu(hanyu: "zhui", koreanPronounce: "주에이", desc: "", videoUrl: "Sy2XPKZHEjs"))
        let chuoBtn = (chuo, Hanyu(hanyu: "chuo", koreanPronounce: "추어", desc: "", videoUrl: "HMPgiWVq1u4"))
        let chuaiBtn = (chuai, Hanyu(hanyu: "chuai", koreanPronounce: "추아이", desc: "", videoUrl: "YEkNhW"))
        let chuiBtn = (chui, Hanyu(hanyu: "chui", koreanPronounce: "추에이", desc: "", videoUrl: "CXoc0jOXnj0"))
        let shuoBtn = (shuo, Hanyu(hanyu: "shuo", koreanPronounce: "수어", desc: "", videoUrl: "LcMQBUaJKHQ"))
        let shuaiBtn = (shuai, Hanyu(hanyu: "shaui", koreanPronounce: "수아이", desc: "", videoUrl: "ZhkAiDh91Uc"))
        let shuiBtn = (shui, Hanyu(hanyu: "shui", koreanPronounce: "수에이", desc: "", videoUrl: "ZBIrpbhT3xA"))
        let ruoBtn = (ruo, Hanyu(hanyu: "ruo", koreanPronounce: "루어", desc: "", videoUrl: "BvIBdv6ivb8"))
        let ruiBtn = (rui, Hanyu(hanyu: "rui", koreanPronounce: "루에이", desc: "", videoUrl: "dfck2uWjPtU"))
        let zuoBtn = (zuo, Hanyu(hanyu: "zuo", koreanPronounce: "쭈어", desc: "", videoUrl: "pYCJqDE4pWY"))
        let zuiBtn = (zui, Hanyu(hanyu: "zui", koreanPronounce: "쭈에이", desc: "", videoUrl: "XlPoAtzX14c"))
        let cuoBtn = (cuo, Hanyu(hanyu: "cuo", koreanPronounce: "추어", desc: "", videoUrl: "tWeG1DMUdfc"))
        let cuiBtn = (cui, Hanyu(hanyu: "cui", koreanPronounce: "추에이", desc: "", videoUrl: "m5ia9Tvbz5w"))
        let suoBtn = (suo, Hanyu(hanyu: "suo", koreanPronounce: "쑤어", desc: "", videoUrl: "H5Nt_SmyBes"))
        let suiBtn = (sui, Hanyu(hanyu: "sui", koreanPronounce: "쑤에이", desc: "", videoUrl: "S3olznkPwKw"))
        
        
        let buttons = [duoBtn, duiBtn, tuoBtn, tuiBtn, nuoBtn, luoBtn, guaBtn, guoBtn, guaiBtn, guiBtn, kuaBtn, kuoBtn, kuaiBtn, huaBtn, huoBtn, huaiBtn, huiBtn, zhuoBtn, zhuaiBtn, zhuiBtn, chuoBtn, chuaiBtn, chuiBtn, shuoBtn, shuaiBtn, shuiBtn, ruoBtn, ruiBtn, zuoBtn, zuiBtn, cuoBtn, cuiBtn, suoBtn, suiBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }
    
    
}
