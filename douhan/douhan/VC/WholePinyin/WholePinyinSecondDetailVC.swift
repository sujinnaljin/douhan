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
        let baiBtn = (bai, Hanyu(hanyu: "bai", koreanPronounce: "빠이", desc: "", videoUrl: "F8LY_ZyBHpI"))
        let beiBtn = (bei, Hanyu(hanyu: "bei", koreanPronounce: "뻬이", desc: "", videoUrl: "Ed46lxM63rQ"))
        let baoBtn = (bao, Hanyu(hanyu: "bao", koreanPronounce: "빠오", desc: "", videoUrl: "SwVgxYjBuD8"))
        let paiBtn = (pai, Hanyu(hanyu: "pai", koreanPronounce: "파이", desc: "", videoUrl: "AuBGFxQT4tM"))
        let peiBtn = (pei, Hanyu(hanyu: "pei", koreanPronounce: "페이", desc: "", videoUrl: "xtC2-mpMQM4"))
        let paoBtn = (pao, Hanyu(hanyu: "pao", koreanPronounce: "파오", desc: "", videoUrl: "lNpsXtWoi-Y"))
        let pouBtn = (pou, Hanyu(hanyu: "pou", koreanPronounce: "퍼우", desc: "", videoUrl: "R9p9RrFv-BY"))
        let maiBtn = (mai, Hanyu(hanyu: "mai", koreanPronounce: "마이", desc: "", videoUrl: "WLgqiR34tXE"))
        let meiBtn = (mei, Hanyu(hanyu: "mei", koreanPronounce: "메이", desc: "", videoUrl: "bPT4gecTU40"))
        let maoBtn = (mao, Hanyu(hanyu: "mao", koreanPronounce: "마오", desc: "", videoUrl: "Jw0C9YqOcyE"))
        let mouBtn = (mou, Hanyu(hanyu: "mou", koreanPronounce: "머우", desc: "", videoUrl: "bwxl3E_xoAo"))
        let feiBtn = (fei, Hanyu(hanyu: "fei", koreanPronounce: "페이", desc: "", videoUrl: "tEyHN1sg_UI"))
        let fouBtn = (fou, Hanyu(hanyu: "fou", koreanPronounce: "퍼우", desc: "", videoUrl: "Ebu1tI2fc-E"))
        let daiBtn = (dai, Hanyu(hanyu: "dai", koreanPronounce: "따이", desc: "", videoUrl: "IDLo6r4c53I"))
        let deiBtn = (dei, Hanyu(hanyu: "dei", koreanPronounce: "떼이", desc: "", videoUrl: "DpqS2hXGUKI"))
        let daoBtn = (dao, Hanyu(hanyu: "dao", koreanPronounce: "따오 ", desc: "", videoUrl: "Env7k3iyEWw"))
        let douBtn = (dou, Hanyu(hanyu: "dou", koreanPronounce: "떠우", desc: "", videoUrl: "XeiGvdfaLvc"))
        let taiBtn = (tai, Hanyu(hanyu: "tai", koreanPronounce: "타이", desc: "", videoUrl: "R4ZY_JJKf8I"))
        let taoBtn = (tao, Hanyu(hanyu: "tao", koreanPronounce: "타오", desc: "", videoUrl: "nqYvjKAwpNY"))
        let touBtn = (tou, Hanyu(hanyu: "tou", koreanPronounce: "터우", desc: "", videoUrl: "AEN7V6PY3P4"))
        let naiBtn = (nai, Hanyu(hanyu: "nai", koreanPronounce: "나이", desc: "", videoUrl: "POI2EeeXr84"))
        let neiBtn = (nei, Hanyu(hanyu: "nei", koreanPronounce: "네이", desc: "", videoUrl: "u7qmNBmbP2w"))
        let naoBtn = (nao, Hanyu(hanyu: "nao", koreanPronounce: "나오", desc: "", videoUrl: "krZC4P4XFJ4"))
        let nouBtn = (nou, Hanyu(hanyu: "nou", koreanPronounce: "너우", desc: "", videoUrl: "dNr1HSbhofI"))
        let laiBtn = (lai, Hanyu(hanyu: "lai", koreanPronounce: "라이", desc: "", videoUrl: "SqErLpW7N3M"))
        let leiBtn = (lei, Hanyu(hanyu: "lei", koreanPronounce: "레이", desc: "", videoUrl: "gwQpFPPhdHk"))
        let laoBtn = (lao, Hanyu(hanyu: "lao", koreanPronounce: "라오", desc: "", videoUrl: "miq8WjMvbgw"))
        let louBtn = (lou, Hanyu(hanyu: "lou", koreanPronounce: "러우", desc: "", videoUrl: "MRAl894Tepc"))
        let gaiBtn = (gai, Hanyu(hanyu: "gai", koreanPronounce: "까이", desc: "", videoUrl: "Ywr2eNOICnE"))
        let geiBtn = (gei, Hanyu(hanyu: "gei", koreanPronounce: "께이", desc: "", videoUrl: "AVdNeDZw8TY"))
        let gaoBtn = (gao, Hanyu(hanyu: "gao", koreanPronounce: "까오", desc: "", videoUrl: "zWEr9Lf2R3o"))
        let gouBtn = (gou, Hanyu(hanyu: "gou", koreanPronounce: "꺼우", desc: "", videoUrl: "fYaZ3Mc1PXc"))
        let kaiBtn = (kai, Hanyu(hanyu: "kai", koreanPronounce: "카이", desc: "", videoUrl: "-pZZ2oBzz7k"))
        let keiBtn = (kei, Hanyu(hanyu: "kei", koreanPronounce: "케이", desc: "", videoUrl: "apadTqpdWwk"))
        let kaoBtn = (kao, Hanyu(hanyu: "kao", koreanPronounce: "카오", desc: "", videoUrl: "DGWgS3ksSBE"))
        let kouBtn = (kou, Hanyu(hanyu: "kou", koreanPronounce: "커우", desc: "", videoUrl: "HFzp4U-hD8o"))
        let haiBtn = (hai, Hanyu(hanyu: "hai", koreanPronounce: "하이", desc: "", videoUrl: "-rLa2dk5S7E"))
        let heiBtn = (hei, Hanyu(hanyu: "hei", koreanPronounce: "헤이", desc: "", videoUrl: "IurfKZYTVPY"))
        let haoBtn = (hao, Hanyu(hanyu: "hao", koreanPronounce: "하오", desc: "", videoUrl: "NCtj2Jnnj38"))
        let houBtn = (hou, Hanyu(hanyu: "hou", koreanPronounce: "허우", desc: "", videoUrl: "85jns2H1jro"))
        let zhaiBtn = (zhai, Hanyu(hanyu: "zhai", koreanPronounce: "자이", desc: "", videoUrl: "WxgyavrrGuc"))
        let zheiBtn = (zhei, Hanyu(hanyu: "zhei", koreanPronounce: "제이", desc: "", videoUrl: "DthhUkMkFiA"))
        let zhaoBtn = (zhao, Hanyu(hanyu: "zhao", koreanPronounce: "자오", desc: "", videoUrl: "CJn98EAqpBc"))
        let zhouBtn = (zhou, Hanyu(hanyu: "zhou", koreanPronounce: "저우", desc: "", videoUrl: "AJCXqRWLFq8"))
        let chaiBtn = (chai, Hanyu(hanyu: "chai", koreanPronounce: "차이", desc: "", videoUrl: "8ITnqIV7okM"))
        let chaoBtn = (chao, Hanyu(hanyu: "chao", koreanPronounce: "차오", desc: "", videoUrl: "7zsjpMLY2V4"))
        let chouBtn = (chou, Hanyu(hanyu: "chou", koreanPronounce: "처우", desc: "", videoUrl: "TMSHeyyxSOA"))
        let shaiBtn = (shai, Hanyu(hanyu: "shai", koreanPronounce: "샤이", desc: "", videoUrl: "2JXNnfgB2ds"))
        let sheiBtn = (shei, Hanyu(hanyu: "shei", koreanPronounce: "쉐이", desc: "", videoUrl: "8fw70hoVfeg"))
        let shaoBtn = (shao, Hanyu(hanyu: "shao", koreanPronounce: "샤오", desc: "", videoUrl: "kzvtjwj6g9Q"))
        let shouBtn = (shou, Hanyu(hanyu: "shou", koreanPronounce: "셔우", desc: "", videoUrl: "3S2lmi50ehQ"))
        let raoBtn = (rao, Hanyu(hanyu: "rao", koreanPronounce: "라오", desc: "", videoUrl: "QfTJ4keIC-M"))
        let rouBtn = (rou, Hanyu(hanyu: "rou", koreanPronounce: "러우", desc: "", videoUrl: "mU6tx0ZG8R8"))
        let zaiBtn = (zai, Hanyu(hanyu: "zai", koreanPronounce: "짜이", desc: "", videoUrl: "Au4i4pCteEg"))
        let zeiBtn = (zei, Hanyu(hanyu: "zei", koreanPronounce: "쩨이", desc: "", videoUrl: "RvUI0vwHaas"))
        let zaoBtn = (zao, Hanyu(hanyu: "zao", koreanPronounce: "짜오", desc: "", videoUrl: "TlC80lWnwYU"))
        let zouBtn = (zou, Hanyu(hanyu: "zou", koreanPronounce: "쩌우", desc: "", videoUrl: "1wmnx3FkKGk"))
        let caiBtn = (cai, Hanyu(hanyu: "cai", koreanPronounce: "차이", desc: "", videoUrl: "uZVuqhv43Sk"))
        let caoBtn = (cao, Hanyu(hanyu: "cao", koreanPronounce: "차오", desc: "", videoUrl: "nhUYlMV49gk"))
        let couBtn = (cou, Hanyu(hanyu: "cou", koreanPronounce: "처우", desc: "", videoUrl: "mDpOjBMGuMQ"))
        let saiBtn = (sai, Hanyu(hanyu: "sai", koreanPronounce: "싸이", desc: "", videoUrl: "03RQXgIAx_c"))
        let saoBtn = (sao, Hanyu(hanyu: "sao", koreanPronounce: "싸오", desc: "", videoUrl: "Sr9pUqgLkzo"))
        let souBtn = (sou, Hanyu(hanyu: "sou", koreanPronounce: "써우", desc: "", videoUrl: "ocCz_SX_70E"))
        
        let buttons = [baiBtn, beiBtn, baoBtn, paiBtn, peiBtn, paoBtn, pouBtn, maiBtn, meiBtn, maoBtn, mouBtn, feiBtn, fouBtn, daiBtn, deiBtn, daoBtn, douBtn, taiBtn, taoBtn, touBtn, naiBtn, neiBtn, naoBtn, nouBtn, laiBtn, leiBtn, laoBtn, louBtn, gaiBtn, geiBtn, gaoBtn, gouBtn, kaiBtn, keiBtn, kaoBtn, kouBtn, haiBtn, heiBtn, haoBtn, houBtn, zhaiBtn, zheiBtn, zhaoBtn, zhouBtn, chaiBtn, chaoBtn, chouBtn, shaiBtn, sheiBtn, shaoBtn, shouBtn, raoBtn, rouBtn, zaiBtn, zeiBtn, zaoBtn, zouBtn, caiBtn, caoBtn, couBtn, saiBtn, saoBtn, souBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }
    
}
