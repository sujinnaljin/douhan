//
//  WholePinyinSecondDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class WholePinyinSecondDetailVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var bai: HanyuBtn!
    @IBOutlet weak var bei: HanyuBtn!
    @IBOutlet weak var bao: HanyuBtn!
    @IBOutlet weak var pai: HanyuBtn!
    @IBOutlet weak var pei: HanyuBtn!
    @IBOutlet weak var pao: HanyuBtn!
    @IBOutlet weak var pou: HanyuBtn!
    @IBOutlet weak var mai: HanyuBtn!
    @IBOutlet weak var mei: HanyuBtn!
    @IBOutlet weak var mao: HanyuBtn!
    @IBOutlet weak var mou: HanyuBtn!
    @IBOutlet weak var fei: HanyuBtn!
    @IBOutlet weak var fou: HanyuBtn!
    @IBOutlet weak var dai: HanyuBtn!
    @IBOutlet weak var dei: HanyuBtn!
    @IBOutlet weak var dao: HanyuBtn!
    @IBOutlet weak var dou: HanyuBtn!
    @IBOutlet weak var tai: HanyuBtn!
    @IBOutlet weak var tao: HanyuBtn!
    @IBOutlet weak var tou: HanyuBtn!
    @IBOutlet weak var nai: HanyuBtn!
    @IBOutlet weak var nei: HanyuBtn!
    @IBOutlet weak var nao: HanyuBtn!
    @IBOutlet weak var nou: HanyuBtn!
    @IBOutlet weak var lai: HanyuBtn!
    @IBOutlet weak var lei: HanyuBtn!
    @IBOutlet weak var lao: HanyuBtn!
    @IBOutlet weak var lou: HanyuBtn!
    @IBOutlet weak var gai: HanyuBtn!
    @IBOutlet weak var gei: HanyuBtn!
    @IBOutlet weak var gao: HanyuBtn!
    @IBOutlet weak var gou: HanyuBtn!
    @IBOutlet weak var kai: HanyuBtn!
    @IBOutlet weak var kei: HanyuBtn!
    @IBOutlet weak var kao: HanyuBtn!
    @IBOutlet weak var kou: HanyuBtn!
    @IBOutlet weak var hai: HanyuBtn!
    @IBOutlet weak var hei: HanyuBtn!
    @IBOutlet weak var hao: HanyuBtn!
    @IBOutlet weak var hou: HanyuBtn!
    @IBOutlet weak var zhai: HanyuBtn!
    @IBOutlet weak var zhei: HanyuBtn!
    @IBOutlet weak var zhao: HanyuBtn!
    @IBOutlet weak var zhou: HanyuBtn!
    @IBOutlet weak var chai: HanyuBtn!
    @IBOutlet weak var chao: HanyuBtn!
    @IBOutlet weak var chou: HanyuBtn!
    @IBOutlet weak var shai: HanyuBtn!
    @IBOutlet weak var shei: HanyuBtn!
    @IBOutlet weak var shao: HanyuBtn!
    @IBOutlet weak var shou: HanyuBtn!
    @IBOutlet weak var rao: HanyuBtn!
    @IBOutlet weak var rou: HanyuBtn!
    @IBOutlet weak var zai: HanyuBtn!
    @IBOutlet weak var zei: HanyuBtn!
    @IBOutlet weak var zao: HanyuBtn!
    @IBOutlet weak var zou: HanyuBtn!
    @IBOutlet weak var cai: HanyuBtn!
    @IBOutlet weak var cao: HanyuBtn!
    @IBOutlet weak var cou: HanyuBtn!
    @IBOutlet weak var sai: HanyuBtn!
    @IBOutlet weak var sao: HanyuBtn!
    @IBOutlet weak var sou: HanyuBtn!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
        
    }
    
    func setHanyuBtn(){
        let baiBtn = (bai, Hanyu(hanyu: "bai", koreanPronounce: "빠이", desc: "", videoUrl: "wib_jutL3SU"))
        let beiBtn = (bei, Hanyu(hanyu: "bei", koreanPronounce: "뻬이", desc: "", videoUrl: "wib_jutL3SU"))
        let baoBtn = (bao, Hanyu(hanyu: "bao", koreanPronounce: "빠오", desc: "", videoUrl: "wib_jutL3SU"))
        let paiBtn = (pai, Hanyu(hanyu: "pai", koreanPronounce: "파이", desc: "", videoUrl: "wib_jutL3SU"))
        let peiBtn = (pei, Hanyu(hanyu: "pei", koreanPronounce: "페이", desc: "", videoUrl: "wib_jutL3SU"))
        let paoBtn = (pao, Hanyu(hanyu: "pao", koreanPronounce: "파오", desc: "", videoUrl: "wib_jutL3SU"))
        let pouBtn = (pou, Hanyu(hanyu: "pou", koreanPronounce: "퍼우", desc: "", videoUrl: "wib_jutL3SU"))
        let maiBtn = (mai, Hanyu(hanyu: "mai", koreanPronounce: "마이", desc: "", videoUrl: "wib_jutL3SU"))
        let meiBtn = (mei, Hanyu(hanyu: "mei", koreanPronounce: "메이", desc: "", videoUrl: "wib_jutL3SU"))
        let maoBtn = (mao, Hanyu(hanyu: "mao", koreanPronounce: "마오", desc: "", videoUrl: "wib_jutL3SU"))
        let mouBtn = (mou, Hanyu(hanyu: "mou", koreanPronounce: "머우", desc: "", videoUrl: "wib_jutL3SU"))
        let feiBtn = (fei, Hanyu(hanyu: "fei", koreanPronounce: "페이", desc: "", videoUrl: "wib_jutL3SU"))
        let fouBtn = (fou, Hanyu(hanyu: "fou", koreanPronounce: "퍼우", desc: "", videoUrl: "wib_jutL3SU"))
        let daiBtn = (dai, Hanyu(hanyu: "dai", koreanPronounce: "따이", desc: "", videoUrl: "wib_jutL3SU"))
        let deiBtn = (dei, Hanyu(hanyu: "dei", koreanPronounce: "떼이", desc: "", videoUrl: "wib_jutL3SU"))
        let daoBtn = (dao, Hanyu(hanyu: "dao", koreanPronounce: "따오 ", desc: "", videoUrl: "wib_jutL3SU"))
        let douBtn = (dou, Hanyu(hanyu: "dou", koreanPronounce: "떠우", desc: "", videoUrl: "wib_jutL3SU"))
        let taiBtn = (tai, Hanyu(hanyu: "tai", koreanPronounce: "타이", desc: "", videoUrl: "wib_jutL3SU"))
        let taoBtn = (tao, Hanyu(hanyu: "tao", koreanPronounce: "타오", desc: "", videoUrl: "wib_jutL3SU"))
        let touBtn = (tou, Hanyu(hanyu: "tou", koreanPronounce: "터우", desc: "", videoUrl: "wib_jutL3SU"))
        let naiBtn = (nai, Hanyu(hanyu: "nai", koreanPronounce: "나이", desc: "", videoUrl: "wib_jutL3SU"))
        let neiBtn = (nei, Hanyu(hanyu: "nei", koreanPronounce: "네이", desc: "", videoUrl: "wib_jutL3SU"))
        let naoBtn = (nao, Hanyu(hanyu: "nao", koreanPronounce: "나오", desc: "", videoUrl: "wib_jutL3SU"))
        let nouBtn = (nou, Hanyu(hanyu: "nou", koreanPronounce: "너우", desc: "", videoUrl: "wib_jutL3SU"))
        let laiBtn = (lai, Hanyu(hanyu: "lai", koreanPronounce: "라이", desc: "", videoUrl: "wib_jutL3SU"))
        let leiBtn = (lei, Hanyu(hanyu: "lei", koreanPronounce: "레이", desc: "", videoUrl: "wib_jutL3SU"))
        let laoBtn = (lao, Hanyu(hanyu: "lao", koreanPronounce: "라오", desc: "", videoUrl: "wib_jutL3SU"))
        let louBtn = (lou, Hanyu(hanyu: "lou", koreanPronounce: "러우", desc: "", videoUrl: "wib_jutL3SU"))
        let gaiBtn = (gai, Hanyu(hanyu: "gai", koreanPronounce: "까이", desc: "", videoUrl: "wib_jutL3SU"))
        let geiBtn = (gei, Hanyu(hanyu: "gei", koreanPronounce: "께이", desc: "", videoUrl: "wib_jutL3SU"))
        let gaoBtn = (gao, Hanyu(hanyu: "gao", koreanPronounce: "까오", desc: "", videoUrl: "wib_jutL3SU"))
        let gouBtn = (gou, Hanyu(hanyu: "gou", koreanPronounce: "꺼우", desc: "", videoUrl: "wib_jutL3SU"))
        let kaiBtn = (kai, Hanyu(hanyu: "kai", koreanPronounce: "카이", desc: "", videoUrl: "wib_jutL3SU"))
        let keiBtn = (kei, Hanyu(hanyu: "kei", koreanPronounce: "케이", desc: "", videoUrl: "wib_jutL3SU"))
        let kaoBtn = (kao, Hanyu(hanyu: "kao", koreanPronounce: "카오", desc: "", videoUrl: "wib_jutL3SU"))
        let kouBtn = (kou, Hanyu(hanyu: "kou", koreanPronounce: "커우", desc: "", videoUrl: "wib_jutL3SU"))
        let haiBtn = (hai, Hanyu(hanyu: "hai", koreanPronounce: "하이", desc: "", videoUrl: "wib_jutL3SU"))
        let heiBtn = (hei, Hanyu(hanyu: "hei", koreanPronounce: "헤이", desc: "", videoUrl: "wib_jutL3SU"))
        let haoBtn = (hao, Hanyu(hanyu: "hao", koreanPronounce: "하오", desc: "", videoUrl: "wib_jutL3SU"))
        let houBtn = (hou, Hanyu(hanyu: "hou", koreanPronounce: "허우", desc: "", videoUrl: "wib_jutL3SU"))
        let zhaiBtn = (zhai, Hanyu(hanyu: "zhai", koreanPronounce: "자이", desc: "", videoUrl: "wib_jutL3SU"))
        let zheiBtn = (zhei, Hanyu(hanyu: "zhei", koreanPronounce: "제이", desc: "", videoUrl: "wib_jutL3SU"))
        let zhaoBtn = (zhao, Hanyu(hanyu: "zhao", koreanPronounce: "자오", desc: "", videoUrl: "wib_jutL3SU"))
        let zhouBtn = (zhou, Hanyu(hanyu: "zhou", koreanPronounce: "저우", desc: "", videoUrl: "wib_jutL3SU"))
        let chaiBtn = (chai, Hanyu(hanyu: "chai", koreanPronounce: "차이", desc: "", videoUrl: "wib_jutL3SU"))
        let chaoBtn = (chao, Hanyu(hanyu: "chao", koreanPronounce: "차오", desc: "", videoUrl: "wib_jutL3SU"))
        let chouBtn = (chou, Hanyu(hanyu: "chou", koreanPronounce: "처우", desc: "", videoUrl: "wib_jutL3SU"))
        let shaiBtn = (shai, Hanyu(hanyu: "shai", koreanPronounce: "샤이", desc: "", videoUrl: "wib_jutL3SU"))
        let sheiBtn = (shei, Hanyu(hanyu: "shei", koreanPronounce: "쉐이", desc: "", videoUrl: "wib_jutL3SU"))
        let shaoBtn = (shao, Hanyu(hanyu: "shao", koreanPronounce: "샤오", desc: "", videoUrl: "wib_jutL3SU"))
        let shouBtn = (shou, Hanyu(hanyu: "shou", koreanPronounce: "셔우", desc: "", videoUrl: "wib_jutL3SU"))
        let raoBtn = (rao, Hanyu(hanyu: "rao", koreanPronounce: "라오", desc: "", videoUrl: "wib_jutL3SU"))
        let rouBtn = (rou, Hanyu(hanyu: "rou", koreanPronounce: "러우", desc: "", videoUrl: "wib_jutL3SU"))
        let zaiBtn = (zai, Hanyu(hanyu: "zai", koreanPronounce: "짜이", desc: "", videoUrl: "wib_jutL3SU"))
        let zeiBtn = (zei, Hanyu(hanyu: "zei", koreanPronounce: "쩨이", desc: "", videoUrl: "wib_jutL3SU"))
        let zaoBtn = (zao, Hanyu(hanyu: "zao", koreanPronounce: "짜오", desc: "", videoUrl: "wib_jutL3SU"))
        let zouBtn = (zou, Hanyu(hanyu: "zou", koreanPronounce: "쩌우", desc: "", videoUrl: "wib_jutL3SU"))
        let caiBtn = (cai, Hanyu(hanyu: "cai", koreanPronounce: "차이", desc: "", videoUrl: "wib_jutL3SU"))
        let caoBtn = (cao, Hanyu(hanyu: "cao", koreanPronounce: "차오", desc: "", videoUrl: "wib_jutL3SU"))
        let couBtn = (cou, Hanyu(hanyu: "cou", koreanPronounce: "처우", desc: "", videoUrl: "wib_jutL3SU"))
        let saiBtn = (sai, Hanyu(hanyu: "sai", koreanPronounce: "싸이", desc: "", videoUrl: "wib_jutL3SU"))
        let saoBtn = (sao, Hanyu(hanyu: "sao", koreanPronounce: "싸오", desc: "", videoUrl: "wib_jutL3SU"))
        let souBtn = (sou, Hanyu(hanyu: "sou", koreanPronounce: "써우", desc: "", videoUrl: "wib_jutL3SU"))
        
        let buttons = [baiBtn, beiBtn, baoBtn, paiBtn, peiBtn, paoBtn, pouBtn, maiBtn, meiBtn, maoBtn, mouBtn, feiBtn, fouBtn, daiBtn, deiBtn, daoBtn, douBtn, taiBtn, taoBtn, touBtn, naiBtn, neiBtn, naoBtn, nouBtn, laiBtn, leiBtn, laoBtn, louBtn, gaiBtn, geiBtn, gaoBtn, gouBtn, kaiBtn, keiBtn, kaoBtn, kouBtn, haiBtn, heiBtn, haoBtn, houBtn, zhaiBtn, zheiBtn, zhaoBtn, zhouBtn, chaiBtn, chaoBtn, chouBtn, shaiBtn, sheiBtn, shaoBtn, shouBtn, raoBtn, rouBtn, zaiBtn, zeiBtn, zaoBtn, zouBtn, caiBtn, caoBtn, couBtn, saiBtn, saoBtn, souBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }
    
}
