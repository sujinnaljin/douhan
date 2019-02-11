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
        
        let duanBtn = (duan, Hanyu(hanyu: "duan", koreanPronounce: "뚜안", desc: "", videoUrl: "0e7dq3u8_bw"))
        let dunBtn = (dun, Hanyu(hanyu: "dun", koreanPronounce: "뚠", desc: "", videoUrl: "H5Zv29VpxeQ"))
        let tuanBtn = (tuan , Hanyu(hanyu: "tuan", koreanPronounce: "투안", desc: "", videoUrl: "56smuYeTNHY"))
        let tunBtn = (tun, Hanyu(hanyu: "tun", koreanPronounce: "춘", desc: "", videoUrl: "rde6gIZqEEw"))
        let nuanBtn = (nuan, Hanyu(hanyu: "nuan", koreanPronounce: "누안", desc: "", videoUrl: "DZVNEyYoTI4"))
        let luanBtn = (luan, Hanyu(hanyu: "luan", koreanPronounce: "루안", desc: "", videoUrl: "ssaeguPoaxE"))
        let lunBtn = (lun, Hanyu(hanyu: "lun", koreanPronounce: "룬", desc: "", videoUrl: "sBl0fM_ICUA"))
        let guanBtn = (guan, Hanyu(hanyu: "guan", koreanPronounce: "꾸안", desc: "", videoUrl: "6MeGM0W_3gw"))
        let gunBtn = (gun, Hanyu(hanyu: "gun", koreanPronounce: "꾼", desc: "", videoUrl: "digGORTOE6I"))
        let guangBtn = (guang, Hanyu(hanyu: "guang", koreanPronounce: "꾸앙", desc: "", videoUrl: "tfUFVgNH9HQ"))
        let kuanBtn = (kuan, Hanyu(hanyu: "kuan", koreanPronounce: "쿠안", desc: "", videoUrl: "Kr1fFOrFymE"))
        let kunBtn = (kun, Hanyu(hanyu: "kun", koreanPronounce: "쿤", desc: "", videoUrl: "6u74NeCUfcw"))
        let kuangBtn = (kuang, Hanyu(hanyu: "kuang", koreanPronounce: "쿠앙", desc: "", videoUrl: "ySDqdW3EnL8"))
        let huanBtn = (huan, Hanyu(hanyu: "huan", koreanPronounce: "후안", desc: "", videoUrl: "lQ5zdd35WlM"))
        let hunBtn = (hun, Hanyu(hanyu: "hun", koreanPronounce: "훈", desc: "", videoUrl: "LReftVECYO4"))
        let huangBtn = (huang, Hanyu(hanyu: "huang", koreanPronounce: "후앙", desc: "", videoUrl: "SAQzxDF3NjA"))
        let zhuanBtn = (zhuan, Hanyu(hanyu: "zhuan", koreanPronounce: "주안", desc: "", videoUrl: "UI7MHKYr4x8"))
        let zhunBtn = (zhun, Hanyu(hanyu: "zhun", koreanPronounce: "준", desc: "", videoUrl: "z_LggTkeR6Q"))
        let zhuangBtn = (zhuang, Hanyu(hanyu: "zhuang", koreanPronounce: "주앙", desc: "", videoUrl: "iWG7eBo1DBU"))
        let chuanBtn = (chuan, Hanyu(hanyu: "chuan", koreanPronounce: "추ㅏㅇㄴ", desc: "", videoUrl: "CSrSvQBC9nI"))
        let chunBtn = (chun, Hanyu(hanyu: "chun", koreanPronounce: "춘", desc: "", videoUrl: "Dmtz_2XjqJU"))
        let chuangBtn = (chuang, Hanyu(hanyu: "chuang", koreanPronounce: "추앙", desc: "", videoUrl: "iB50q8VP3"))
        let shuanBtn = (shuan, Hanyu(hanyu: "shuan", koreanPronounce: "수안", desc: "", videoUrl: "rXPuHG5DaoM"))
        let shunBtn = (shun, Hanyu(hanyu: "shun", koreanPronounce: "순", desc: "", videoUrl: "uPog7C3LdWI"))
        let shuangBtn = (shuang, Hanyu(hanyu: "shuang", koreanPronounce: "수앙", desc: "", videoUrl: "LkSIJBmoSFk"))
        let ruanBtn = (ruan, Hanyu(hanyu: "ruan", koreanPronounce: "루안", desc: "", videoUrl: "io_w03ReuVU"))
        let runBtn = (run, Hanyu(hanyu: "run", koreanPronounce: "룬", desc: "", videoUrl: "x5jKJppNL6o"))
        let zuanBtn = (zuan, Hanyu(hanyu: "zuan", koreanPronounce: "쭈안", desc: "", videoUrl: "gbpJoHHZC00"))
        let zunBtn = (zun, Hanyu(hanyu: "zun", koreanPronounce: "쭌", desc: "", videoUrl: "G048habPfik"))
        let cuanBtn = (cuan, Hanyu(hanyu: "cuan", koreanPronounce: "추안", desc: "", videoUrl: "jesY2kSHinc"))
        let cunBtn = (cun, Hanyu(hanyu: "cun", koreanPronounce: "춘", desc: "", videoUrl: "dOqi9yUbnqM"))
        let suanBtn = (suan, Hanyu(hanyu: "suan", koreanPronounce: "쑤안", desc: "", videoUrl: "0fv7RVbJjzY"))
        let sunBtn = (sun, Hanyu(hanyu: "sun", koreanPronounce: "쑨", desc: "", videoUrl: "OGi0TPzRLao"))
        
        
        let buttons = [duanBtn, dunBtn, tuanBtn, tunBtn, nuanBtn, luanBtn, lunBtn, guanBtn, gunBtn, guangBtn, kuanBtn, kunBtn, kuangBtn, huanBtn, hunBtn, huangBtn, zhuanBtn, zhunBtn, zhuangBtn, chuanBtn, chunBtn, chuangBtn, shuanBtn, shunBtn, shuangBtn, ruanBtn, runBtn, zuanBtn, zunBtn, cuanBtn, cunBtn, suanBtn, sunBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }
    
    
}
