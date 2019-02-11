//
//  WholePinyinThirdDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class WholePinyinThirdDetailVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var ban: HanyuBtn!
    @IBOutlet weak var ben: HanyuBtn!
    @IBOutlet weak var bang: HanyuBtn!
    @IBOutlet weak var beng: HanyuBtn!
    @IBOutlet weak var pan: HanyuBtn!
    @IBOutlet weak var pen: HanyuBtn!
    @IBOutlet weak var pang: HanyuBtn!
    @IBOutlet weak var peng: HanyuBtn!
    @IBOutlet weak var man: HanyuBtn!
    @IBOutlet weak var men: HanyuBtn!
    @IBOutlet weak var mang: HanyuBtn!
    @IBOutlet weak var meng: HanyuBtn!
    @IBOutlet weak var fan: HanyuBtn!
    @IBOutlet weak var fen: HanyuBtn!
    @IBOutlet weak var fang: HanyuBtn!
    @IBOutlet weak var feng: HanyuBtn!
    @IBOutlet weak var dan: HanyuBtn!
    @IBOutlet weak var den: HanyuBtn!
    @IBOutlet weak var dang: HanyuBtn!
    @IBOutlet weak var deng: HanyuBtn!
    @IBOutlet weak var dong: HanyuBtn!
    @IBOutlet weak var tan: HanyuBtn!
    @IBOutlet weak var tang: HanyuBtn!
    @IBOutlet weak var teng: HanyuBtn!
    @IBOutlet weak var tong: HanyuBtn!
    @IBOutlet weak var nan: HanyuBtn!
    @IBOutlet weak var nen: HanyuBtn!
    @IBOutlet weak var nang: HanyuBtn!
    @IBOutlet weak var neng: HanyuBtn!
    @IBOutlet weak var nong: HanyuBtn!
    @IBOutlet weak var lan: HanyuBtn!
    @IBOutlet weak var lang: HanyuBtn!
    @IBOutlet weak var leng: HanyuBtn!
    @IBOutlet weak var long: HanyuBtn!
    @IBOutlet weak var gan: HanyuBtn!
    @IBOutlet weak var gen: HanyuBtn!
    @IBOutlet weak var gang: HanyuBtn!
    @IBOutlet weak var geng: HanyuBtn!
    @IBOutlet weak var gong: HanyuBtn!
    @IBOutlet weak var kan: HanyuBtn!
    @IBOutlet weak var ken: HanyuBtn!
    @IBOutlet weak var kang: HanyuBtn!
    @IBOutlet weak var keng: HanyuBtn!
    @IBOutlet weak var kong: HanyuBtn!
    @IBOutlet weak var han: HanyuBtn!
    @IBOutlet weak var hen: HanyuBtn!
    @IBOutlet weak var hang: HanyuBtn!
    @IBOutlet weak var heng: HanyuBtn!
    @IBOutlet weak var hong: HanyuBtn!
    @IBOutlet weak var zhan: HanyuBtn!
    @IBOutlet weak var zhen: HanyuBtn!
    @IBOutlet weak var zhang: HanyuBtn!
    @IBOutlet weak var zheng: HanyuBtn!
    @IBOutlet weak var zhong: HanyuBtn!
    @IBOutlet weak var chan: HanyuBtn!
    @IBOutlet weak var chen: HanyuBtn!
    @IBOutlet weak var chang: HanyuBtn!
    @IBOutlet weak var cheng: HanyuBtn!
    @IBOutlet weak var chong: HanyuBtn!
    @IBOutlet weak var shan: HanyuBtn!
    @IBOutlet weak var shen: HanyuBtn!
    @IBOutlet weak var shang: HanyuBtn!
    @IBOutlet weak var sheng: HanyuBtn!
    @IBOutlet weak var ran: HanyuBtn!
    @IBOutlet weak var ren: HanyuBtn!
    @IBOutlet weak var rang: HanyuBtn!
    @IBOutlet weak var rong: HanyuBtn!
    @IBOutlet weak var zan: HanyuBtn!
    @IBOutlet weak var zen: HanyuBtn!
    @IBOutlet weak var zang: HanyuBtn!
    @IBOutlet weak var zeng: HanyuBtn!
    @IBOutlet weak var zong: HanyuBtn!
    @IBOutlet weak var can: HanyuBtn!
    @IBOutlet weak var cen: HanyuBtn!
    @IBOutlet weak var cang: HanyuBtn!
    @IBOutlet weak var ceng: HanyuBtn!
    @IBOutlet weak var cong: HanyuBtn!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
        
    }
    
    func setHanyuBtn(){
        let banBtn = (ban, Hanyu(hanyu: "ban", koreanPronounce: "빤", desc: "", videoUrl: "GpkUuWOq7mw"))
        let benBtn = (ben, Hanyu(hanyu: "ben", koreanPronounce: "뻔", desc: "", videoUrl: "wO30tHNUTfo"))
        let bangBtn = (bang, Hanyu(hanyu: "bang", koreanPronounce: "빵", desc: "", videoUrl: "StkiuKFGnqA"))
        let bengBtn = (beng, Hanyu(hanyu: "beng", koreanPronounce: "뻥", desc: "", videoUrl: "bTYEaqBB63Y"))
        let panBtn = (pan, Hanyu(hanyu: "pan", koreanPronounce: "판", desc: "", videoUrl: "vT3ZyHp5sTM"))
        let penBtn = (pen, Hanyu(hanyu: "pen", koreanPronounce: "펀", desc: "", videoUrl: "2OhrcxWX7Zs"))
        let pangBtn = (pang, Hanyu(hanyu: "pang", koreanPronounce: "팡", desc: "", videoUrl: "N1ZZnWU9UiE"))
        let pengBtn = (peng, Hanyu(hanyu: "peng", koreanPronounce: "펑", desc: "", videoUrl: "HUJVPAb55Vs"))
        let manBtn = (man, Hanyu(hanyu: "man", koreanPronounce: "만", desc: "", videoUrl: "U0I1Qfr24Ag"))
        let menBtn = (men, Hanyu(hanyu: "men", koreanPronounce: "먼", desc: "", videoUrl: defualtURL))
        let mangBtn = (mang, Hanyu(hanyu: "mang", koreanPronounce: "망", desc: "", videoUrl: "RXpk_2THNoA"))
        let mengBtn = (meng, Hanyu(hanyu: "meng", koreanPronounce: "멍", desc: "", videoUrl: "nVoPcaUW_ms"))
        let fanBtn = (fan, Hanyu(hanyu: "fan", koreanPronounce: "판", desc: "", videoUrl: "YlByRWTIb68"))
        let fenBtn = (fen, Hanyu(hanyu: "fen", koreanPronounce: "펀", desc: "", videoUrl: "Z_E9WMFWiLs"))
        let fangBtn = (fang, Hanyu(hanyu: "fang", koreanPronounce: "팡", desc: "", videoUrl: "UNHINqgCY7E"))
        let fengBtn = (feng, Hanyu(hanyu: "feng", koreanPronounce: "펑", desc: "", videoUrl: "QsZRc51jcKg"))
        let danBtn = (dan, Hanyu(hanyu: "dan", koreanPronounce: "딴", desc: "", videoUrl: "4m__OR7fykU"))
        let denBtn = (den, Hanyu(hanyu: "den", koreanPronounce: "떤", desc: "", videoUrl: "gyw6rNMMUKs"))
        let dangBtn = (dang, Hanyu(hanyu: "dang", koreanPronounce: "땅", desc: "", videoUrl: "m9V5Xi7-bDo"))
        let dengBtn = (deng, Hanyu(hanyu: "deng", koreanPronounce: "떵", desc: "", videoUrl: "AtO4BOHWCOM"))
        let dongBtn = (dong, Hanyu(hanyu: "dong", koreanPronounce: "똥", desc: "", videoUrl: "-W9x6NkeenU"))
        let tanBtn = (tan, Hanyu(hanyu: "tan", koreanPronounce: "탄", desc: "", videoUrl: "28JEY1vJU28"))
        let tangBtn = (tang, Hanyu(hanyu: "tang", koreanPronounce: "탕", desc: "", videoUrl: "MTTlPd1qvbg"))
        let tengBtn = (teng, Hanyu(hanyu: "teng", koreanPronounce: "텅", desc: "", videoUrl: "vQa0FdLgkxA"))
        let tongBtn = (tong, Hanyu(hanyu: "tong", koreanPronounce: "통", desc: "", videoUrl: "_uupJu7OOA4"))
        let nanBtn = (nan, Hanyu(hanyu: "nan", koreanPronounce: "난", desc: "", videoUrl: "5HA_Ieq_KJo"))
        let nenBtn = (nen, Hanyu(hanyu: "nen", koreanPronounce: "넌", desc: "", videoUrl: "0PdXqhmuk80"))
        let nangBtn = (nang, Hanyu(hanyu: "nang", koreanPronounce: "낭", desc: "", videoUrl: "oIG4Pj4NB30"))
        let nengBtn = (neng, Hanyu(hanyu: "neng", koreanPronounce: "넝", desc: "", videoUrl: "WFtZ_wDvzr8"))
        let nongBtn = (nong, Hanyu(hanyu: "nong", koreanPronounce: "농", desc: "", videoUrl: "XF7DJxdypd0"))
        let lanBtn = (lan, Hanyu(hanyu: "lan", koreanPronounce: "란", desc: "", videoUrl: "zQ2n9HZZmzE"))
        let langBtn = (lang, Hanyu(hanyu: "lang", koreanPronounce: "랑", desc: "", videoUrl: "EY1Yu-MV1I4"))
        let lengBtn = (leng, Hanyu(hanyu: "leng", koreanPronounce: "렁", desc: "", videoUrl: "Ugtlwf-U1L8"))
        let longBtn = (long, Hanyu(hanyu: "long", koreanPronounce: "롱", desc: "", videoUrl: "95P1CfYgAmg"))
        let ganBtn = (gan, Hanyu(hanyu: "gan", koreanPronounce: "깐", desc: "", videoUrl: "bGNBGj4m9IA"))
        let genBtn = (gen, Hanyu(hanyu: "gen", koreanPronounce: "끄언", desc: "", videoUrl: "Lp6ZNc7RSMI"))
        let gangBtn = (gang, Hanyu(hanyu: "gang", koreanPronounce: "깡", desc: "", videoUrl: "-mTl0Xo4Q0w"))
        let gengBtn = (geng, Hanyu(hanyu: "geng", koreanPronounce: "끄엉", desc: "", videoUrl: "Wq2g7vxiL7c"))
        let gongBtn = (gong, Hanyu(hanyu: "gong", koreanPronounce: "꽁", desc: "", videoUrl: "iefIy5XwRG8"))
        let kanBtn = (kan, Hanyu(hanyu: "kan", koreanPronounce: "칸", desc: "", videoUrl: "V9DHAL5ottA"))
        let kenBtn = (ken, Hanyu(hanyu: "ken", koreanPronounce: "크언", desc: "", videoUrl: "-3RnK0yir3M"))
        let kangBtn = (kang, Hanyu(hanyu: "kang", koreanPronounce: "캉", desc: "", videoUrl: "y4l5zMcOyzk"))
        let kengBtn = (keng, Hanyu(hanyu: "keng", koreanPronounce: "크엉", desc: "", videoUrl: "ARUZa1vDQYM"))
        let kongBtn = (kong, Hanyu(hanyu: "kong", koreanPronounce: "콩", desc: "", videoUrl: "r3MkiOMiFN0"))
        let hanBtn = (han, Hanyu(hanyu: "han", koreanPronounce: "한", desc: "", videoUrl: "CPpEFinWPEg"))
        let henBtn = (hen, Hanyu(hanyu: "hen", koreanPronounce: "흐언", desc: "", videoUrl: "cBy0NEZMKv0"))
        let hangBtn = (hang, Hanyu(hanyu: "hang", koreanPronounce: "항", desc: "", videoUrl: "GXzfQSuxegU"))
        let hengBtn = (heng, Hanyu(hanyu: "heng", koreanPronounce: "흐엉", desc: "", videoUrl: "YdXGuIh7FMg"))
        let hongBtn = (hong, Hanyu(hanyu: "hong", koreanPronounce: "홍", desc: "", videoUrl: "KFH5RyKq6N4"))
        let zhanBtn = (zhan, Hanyu(hanyu: "zhan", koreanPronounce: "잔", desc: "", videoUrl: "GZoV00PJOqQ"))
        let zhenBtn = (zhen, Hanyu(hanyu: "zhen", koreanPronounce: "전", desc: "", videoUrl: "9obYnpURqMo"))
        let zhangBtn = (zhang, Hanyu(hanyu: "zhang", koreanPronounce: "장", desc: "", videoUrl: "WwVMXXcmIr4"))
        let zhengBtn = (zheng, Hanyu(hanyu: "zheng", koreanPronounce: "정", desc: "", videoUrl: "0_a61UuYxfs"))
        let zhongBtn = (zhong, Hanyu(hanyu: "zhong", koreanPronounce: "종", desc: "", videoUrl: "_FonlxR1qWk"))
        let chanBtn = (chan, Hanyu(hanyu: "chan", koreanPronounce: "찬", desc: "", videoUrl: "3zUJoXBYUXY"))
        let chenBtn = (chen, Hanyu(hanyu: "chen", koreanPronounce: "천", desc: "", videoUrl: "S-bvcu3G77Q"))
        let changBtn = (chang, Hanyu(hanyu: "chang", koreanPronounce: "창", desc: "", videoUrl: "MXWB3qmUPJs"))
        let chengBtn = (cheng, Hanyu(hanyu: "cheng", koreanPronounce: "청", desc: "", videoUrl: "Ci0i4lKi0Vo"))
        let chongBtn = (chong, Hanyu(hanyu: "chong", koreanPronounce: "총", desc: "", videoUrl: "xnan-3ojphw"))
        let shanBtn = (shan, Hanyu(hanyu: "shan", koreanPronounce: "샨", desc: "", videoUrl: "bEQN1B5gqGI"))
        let shenBtn = (shen, Hanyu(hanyu: "shen", koreanPronounce: "션", desc: "", videoUrl: "v5WV_hWjvrs"))
        let shangBtn = (shang, Hanyu(hanyu: "shang", koreanPronounce: "샹", desc: "", videoUrl: "Vl1Cn1mMqgE"))
        let shengBtn = (sheng, Hanyu(hanyu: "sheng", koreanPronounce: "셩", desc: "", videoUrl: "MN-7d2LjdOk"))
        let ranBtn = (ran, Hanyu(hanyu: "ran", koreanPronounce: "란", desc: "", videoUrl: "YiOcG7xWLNg"))
        let renBtn = (ren, Hanyu(hanyu: "ren", koreanPronounce: "런", desc: "", videoUrl: "Aft9d5SlQbw"))
        let rangBtn = (rang, Hanyu(hanyu: "rang", koreanPronounce: "랑", desc: "", videoUrl: "uY--76iCVAw"))
        let rongBtn = (rong, Hanyu(hanyu: "rong", koreanPronounce: "롱", desc: "", videoUrl: "O8z2RBrIm8k"))
        let zanBtn = (zan, Hanyu(hanyu: "zan", koreanPronounce: "짠", desc: "", videoUrl: "CbOmo64wtDs"))
        let zenBtn = (zen, Hanyu(hanyu: "zen", koreanPronounce: "쩐", desc: "", videoUrl: "MbbVbIEzhF4"))
        let zangBtn = (zang, Hanyu(hanyu: "zang", koreanPronounce: "짱", desc: "", videoUrl: "-d4fVewGuv4"))
        let zengBtn = (zeng, Hanyu(hanyu: "zeng", koreanPronounce: "쩡", desc: "", videoUrl: "r7FQazR6UxI"))
        let zongBtn = (zong, Hanyu(hanyu: "zong", koreanPronounce: "쫑", desc: "", videoUrl: "boIYq-IfPpc"))
        let canBtn = (can, Hanyu(hanyu: "can", koreanPronounce: "찬", desc: "", videoUrl: "LtNrepKOKNA"))
        let cenBtn = (cen, Hanyu(hanyu: "cen", koreanPronounce: "천", desc: "", videoUrl: "aTTKMAC82FY"))
        let cangBtn = (cang, Hanyu(hanyu: "cang", koreanPronounce: "창", desc: "", videoUrl: "72BMts4YTZQ"))
        let cengBtn = (ceng, Hanyu(hanyu: "ceng", koreanPronounce: "청", desc: "", videoUrl: "Fs8mkSgpYco"))
        let congBtn = (cong, Hanyu(hanyu: "cong", koreanPronounce: "총", desc: "", videoUrl: "TbJIJCGMVNA"))
        
        let buttons = [banBtn, benBtn, bangBtn, bengBtn, panBtn, penBtn, pangBtn, pengBtn, manBtn, menBtn, mangBtn, mengBtn, fanBtn, fenBtn, fangBtn, fengBtn, danBtn, denBtn, dangBtn, dengBtn, dongBtn, tanBtn, tangBtn, tengBtn, tongBtn, nanBtn, nenBtn, nangBtn, nengBtn, nongBtn, lanBtn, langBtn, lengBtn, longBtn, ganBtn, genBtn, gangBtn, gengBtn, gongBtn, kanBtn, kenBtn, kangBtn, kengBtn, kongBtn, hanBtn, henBtn, hangBtn, hengBtn, hongBtn, zhanBtn, zhenBtn, zhangBtn, zhengBtn, zhongBtn, chanBtn, chenBtn, changBtn, chengBtn, chongBtn, shanBtn, shenBtn, shangBtn, shengBtn, ranBtn, renBtn, rangBtn, rongBtn, zanBtn, zenBtn, zangBtn, zengBtn, zongBtn, canBtn, cenBtn, cangBtn, cengBtn, congBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
        
    }
    
}
