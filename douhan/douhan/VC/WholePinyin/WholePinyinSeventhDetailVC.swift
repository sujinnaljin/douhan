//
//  WholePinyinSeventhDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class WholePinyinSeventhDetailVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var duan: HanyuBtn!
    @IBOutlet weak var dun: HanyuBtn!
    @IBOutlet weak var tuan: HanyuBtn!
    @IBOutlet weak var tun: HanyuBtn!
    @IBOutlet weak var nuan: HanyuBtn!
    @IBOutlet weak var luan: HanyuBtn!
    @IBOutlet weak var lun: HanyuBtn!
    @IBOutlet weak var guan: HanyuBtn!
    @IBOutlet weak var gun: HanyuBtn!
    @IBOutlet weak var guang: HanyuBtn!
    @IBOutlet weak var kuan: HanyuBtn!
    @IBOutlet weak var kun: HanyuBtn!
    @IBOutlet weak var kuang: HanyuBtn!
    @IBOutlet weak var huan: HanyuBtn!
    @IBOutlet weak var hun: HanyuBtn!
    @IBOutlet weak var huang: HanyuBtn!
    @IBOutlet weak var zhuan: HanyuBtn!
    @IBOutlet weak var zhun: HanyuBtn!
    @IBOutlet weak var zhuang: HanyuBtn!
    @IBOutlet weak var chuan: HanyuBtn!
    @IBOutlet weak var chun: HanyuBtn!
    @IBOutlet weak var chuang: HanyuBtn!
    @IBOutlet weak var shuan: HanyuBtn!
    @IBOutlet weak var shun: HanyuBtn!
    @IBOutlet weak var shuang: HanyuBtn!
    @IBOutlet weak var ruan: HanyuBtn!
    @IBOutlet weak var run: HanyuBtn!
    @IBOutlet weak var zuan: HanyuBtn!
    @IBOutlet weak var zun: HanyuBtn!
    @IBOutlet weak var cuan: HanyuBtn!
    @IBOutlet weak var cun: HanyuBtn!
    @IBOutlet weak var suan: HanyuBtn!
    @IBOutlet weak var sun: HanyuBtn!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
      
    }
    
    func setHanyuBtn(){
        
        let duanBtn = (duan, Hanyu(hanyu: "duan", koreanPronounce: "뚜안", desc: "", videoUrl: "wib_jutL3SU"))
        let dunBtn = (dun, Hanyu(hanyu: "dun", koreanPronounce: "뚠", desc: "", videoUrl: "wib_jutL3SU"))
        let tuanBtn = (tuan , Hanyu(hanyu: "tuan", koreanPronounce: "투안", desc: "", videoUrl: "wib_jutL3SU"))
        let tunBtn = (tun, Hanyu(hanyu: "tun", koreanPronounce: "춘", desc: "", videoUrl: "wib_jutL3SU"))
        let nuanBtn = (nuan, Hanyu(hanyu: "nuan", koreanPronounce: "누안", desc: "", videoUrl: "wib_jutL3SU"))
        let luanBtn = (luan, Hanyu(hanyu: "luan", koreanPronounce: "루안", desc: "", videoUrl: "wib_jutL3SU"))
        let lunBtn = (lun, Hanyu(hanyu: "lun", koreanPronounce: "룬", desc: "", videoUrl: "wib_jutL3SU"))
        let guanBtn = (guan, Hanyu(hanyu: "guan", koreanPronounce: "꾸안", desc: "", videoUrl: "wib_jutL3SU"))
        let gunBtn = (gun, Hanyu(hanyu: "gun", koreanPronounce: "꾼", desc: "", videoUrl: "wib_jutL3SU"))
        let guangBtn = (guang, Hanyu(hanyu: "guang", koreanPronounce: "꾸앙", desc: "", videoUrl: "wib_jutL3SU"))
        let kuanBtn = (kuan, Hanyu(hanyu: "kuan", koreanPronounce: "쿠안", desc: "", videoUrl: "wib_jutL3SU"))
        let kunBtn = (kun, Hanyu(hanyu: "kun", koreanPronounce: "쿤", desc: "", videoUrl: "wib_jutL3SU"))
        let kuangBtn = (kuang, Hanyu(hanyu: "kuang", koreanPronounce: "쿠앙", desc: "", videoUrl: "wib_jutL3SU"))
        let huanBtn = (huan, Hanyu(hanyu: "huan", koreanPronounce: "후안", desc: "", videoUrl: "wib_jutL3SU"))
        let hunBtn = (hun, Hanyu(hanyu: "hun", koreanPronounce: "훈", desc: "", videoUrl: "wib_jutL3SU"))
        let huangBtn = (huang, Hanyu(hanyu: "huang", koreanPronounce: "후앙", desc: "", videoUrl: "wib_jutL3SU"))
        let zhuanBtn = (zhuan, Hanyu(hanyu: "zhuan", koreanPronounce: "주안", desc: "", videoUrl: "wib_jutL3SU"))
        let zhunBtn = (zhun, Hanyu(hanyu: "zhun", koreanPronounce: "준", desc: "", videoUrl: "wib_jutL3SU"))
        let zhuangBtn = (zhuang, Hanyu(hanyu: "zhuang", koreanPronounce: "주앙", desc: "", videoUrl: "wib_jutL3SU"))
        let chuanBtn = (chuan, Hanyu(hanyu: "chuan", koreanPronounce: "추ㅏㅇㄴ", desc: "", videoUrl: "wib_jutL3SU"))
        let chunBtn = (chun, Hanyu(hanyu: "chun", koreanPronounce: "춘", desc: "", videoUrl: "wib_jutL3SU"))
        let chuangBtn = (chuang, Hanyu(hanyu: "chuang", koreanPronounce: "추앙", desc: "", videoUrl: "wib_jutL3SU"))
        let shuanBtn = (shuan, Hanyu(hanyu: "shuan", koreanPronounce: "수안", desc: "", videoUrl: "wib_jutL3SU"))
        let shunBtn = (shun, Hanyu(hanyu: "shun", koreanPronounce: "순", desc: "", videoUrl: "wib_jutL3SU"))
        let shuangBtn = (shuang, Hanyu(hanyu: "shuang", koreanPronounce: "수앙", desc: "", videoUrl: "wib_jutL3SU"))
        let ruanBtn = (ruan, Hanyu(hanyu: "ruan", koreanPronounce: "루안", desc: "", videoUrl: "wib_jutL3SU"))
        let runBtn = (run, Hanyu(hanyu: "run", koreanPronounce: "룬", desc: "", videoUrl: "wib_jutL3SU"))
        let zuanBtn = (zuan, Hanyu(hanyu: "zuan", koreanPronounce: "쭈안", desc: "", videoUrl: "wib_jutL3SU"))
        let zunBtn = (zun, Hanyu(hanyu: "zun", koreanPronounce: "쭌", desc: "", videoUrl: "wib_jutL3SU"))
        let cuanBtn = (cuan, Hanyu(hanyu: "cuan", koreanPronounce: "추안", desc: "", videoUrl: "wib_jutL3SU"))
        let cunBtn = (cun, Hanyu(hanyu: "cun", koreanPronounce: "춘", desc: "", videoUrl: "wib_jutL3SU"))
        let suanBtn = (suan, Hanyu(hanyu: "suan", koreanPronounce: "쑤안", desc: "", videoUrl: "wib_jutL3SU"))
        let sunBtn = (sun, Hanyu(hanyu: "sun", koreanPronounce: "쑨", desc: "", videoUrl: "wib_jutL3SU"))
        
        
        let buttons = [duanBtn, dunBtn, tuanBtn, tunBtn, nuanBtn, luanBtn, lunBtn, guanBtn, gunBtn, guangBtn, kuanBtn, kunBtn, kuangBtn, huanBtn, hunBtn, huangBtn, zhuanBtn, zhunBtn, zhuangBtn, chuanBtn, chunBtn, chuangBtn, shuanBtn, shunBtn, shuangBtn, ruanBtn, runBtn, zuanBtn, zunBtn, cuanBtn, cunBtn, suanBtn, sunBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }
    
    
}
