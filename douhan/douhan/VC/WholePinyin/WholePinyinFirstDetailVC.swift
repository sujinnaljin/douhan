//
//  WholePinyinFirstDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class WholePinyinFirstDetailVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var ba: HanyuBtn!
    @IBOutlet weak var bo: HanyuBtn!
    @IBOutlet weak var bi: HanyuBtn!
    @IBOutlet weak var bu: HanyuBtn!
    @IBOutlet weak var pa: HanyuBtn!
    @IBOutlet weak var po: HanyuBtn!
    @IBOutlet weak var pi: HanyuBtn!
    @IBOutlet weak var pu: HanyuBtn!
    @IBOutlet weak var ma: HanyuBtn!
    @IBOutlet weak var mo: HanyuBtn!
    @IBOutlet weak var me: HanyuBtn!
    @IBOutlet weak var mi: HanyuBtn!
    @IBOutlet weak var mu: HanyuBtn!
    @IBOutlet weak var fa: HanyuBtn!
    @IBOutlet weak var fo: HanyuBtn!
    @IBOutlet weak var fu: HanyuBtn!
    @IBOutlet weak var da: HanyuBtn!
    @IBOutlet weak var de: HanyuBtn!
    @IBOutlet weak var di: HanyuBtn!
    @IBOutlet weak var du: HanyuBtn!
    @IBOutlet weak var ta: HanyuBtn!
    @IBOutlet weak var te: HanyuBtn!
    @IBOutlet weak var ti: HanyuBtn!
    @IBOutlet weak var tu: HanyuBtn!
    @IBOutlet weak var na: HanyuBtn!
    @IBOutlet weak var ne: HanyuBtn!
    @IBOutlet weak var ni: HanyuBtn!
    @IBOutlet weak var nu: HanyuBtn!
    @IBOutlet weak var nü: HanyuBtn!
    @IBOutlet weak var la: HanyuBtn!
    @IBOutlet weak var le: HanyuBtn!
    @IBOutlet weak var li: HanyuBtn!
    @IBOutlet weak var lu: HanyuBtn!
    @IBOutlet weak var lü: HanyuBtn!
    @IBOutlet weak var ga: HanyuBtn!
    @IBOutlet weak var ge: HanyuBtn!
    @IBOutlet weak var gu: HanyuBtn!
    @IBOutlet weak var ka: HanyuBtn!
    @IBOutlet weak var ke: HanyuBtn!
    @IBOutlet weak var ku: HanyuBtn!
    @IBOutlet weak var ha: HanyuBtn!
    @IBOutlet weak var he: HanyuBtn!
    @IBOutlet weak var hu: HanyuBtn!
    @IBOutlet weak var ji: HanyuBtn!
    @IBOutlet weak var jü: HanyuBtn!
    @IBOutlet weak var qi: HanyuBtn!
    @IBOutlet weak var qü: HanyuBtn!
    @IBOutlet weak var xi: HanyuBtn!
    @IBOutlet weak var xü: HanyuBtn!
    @IBOutlet weak var zha: HanyuBtn!
    @IBOutlet weak var zhe: HanyuBtn!
    @IBOutlet weak var zhi: HanyuBtn!
    @IBOutlet weak var zhu: HanyuBtn!
    @IBOutlet weak var cha: HanyuBtn!
    @IBOutlet weak var che: HanyuBtn!
    @IBOutlet weak var chi: HanyuBtn!
    @IBOutlet weak var chu: HanyuBtn!
    @IBOutlet weak var sha: HanyuBtn!
    @IBOutlet weak var she: HanyuBtn!
    @IBOutlet weak var shi: HanyuBtn!
    @IBOutlet weak var shu: HanyuBtn!
    @IBOutlet weak var re: HanyuBtn!
    @IBOutlet weak var ri: HanyuBtn!
    @IBOutlet weak var ru: HanyuBtn!
    @IBOutlet weak var za: HanyuBtn!
    @IBOutlet weak var ze: HanyuBtn!
    @IBOutlet weak var zi: HanyuBtn!
    @IBOutlet weak var zu: HanyuBtn!
    @IBOutlet weak var ca: HanyuBtn!
    @IBOutlet weak var ce: HanyuBtn!
    @IBOutlet weak var ci: HanyuBtn!
    @IBOutlet weak var cu: HanyuBtn!
    @IBOutlet weak var sa: HanyuBtn!
    @IBOutlet weak var se: HanyuBtn!
    @IBOutlet weak var si: HanyuBtn!
    @IBOutlet weak var su: HanyuBtn!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
    }
    
    func setHanyuBtn(){
        let baBtn = (ba, Hanyu(hanyu: "ba", koreanPronounce: "빠", desc: "", videoUrl: "kj1ZV52hJUI"))
        let boBtn = (bo, Hanyu(hanyu: "bo", koreanPronounce: "뽀어", desc: "", videoUrl: "0jOaX-dPcyo"))
        let biBtn = (bi, Hanyu(hanyu: "bi", koreanPronounce: "삐", desc: "", videoUrl: "tHi_Gh0z5po"))
        let buBtn = (bu, Hanyu(hanyu: "bu", koreanPronounce: "뿌", desc: "", videoUrl: "O45Kss91rHw"))
        let paBtn = (pa, Hanyu(hanyu: "pa", koreanPronounce: "파", desc: "", videoUrl: "nJJWzocDaRA"))
        let poBtn = (po, Hanyu(hanyu: "po", koreanPronounce: "포어", desc: "", videoUrl: "kYEEt6vgSsc"))
        let piBtn = (pi, Hanyu(hanyu: "pi", koreanPronounce: "피", desc: "", videoUrl: "FY20EAzDJgU"))
        let puBtn = (pu, Hanyu(hanyu: "pu", koreanPronounce: "푸", desc: "", videoUrl: "68E3Sm4048w"))
        let maBtn = (ma, Hanyu(hanyu: "ma", koreanPronounce: "마", desc: "", videoUrl: "ZJjcUkpqTiU"))
        let moBtn = (mo, Hanyu(hanyu: "mo", koreanPronounce: "모어", desc: "", videoUrl: "8eJhwVme6DY"))
        let meBtn = (me, Hanyu(hanyu: "me", koreanPronounce: "므어", desc: "", videoUrl: "Oau5gSZBZvE"))
        let miBtn = (mi, Hanyu(hanyu: "mi", koreanPronounce: "미", desc: "", videoUrl: "vwLNz-YJkSk"))
        let muBtn = (mu, Hanyu(hanyu: "mu", koreanPronounce: "무", desc: "", videoUrl: "mBS2YkG-Abg"))
        let faBtn = (fa, Hanyu(hanyu: "fa", koreanPronounce: "파", desc: "", videoUrl: "1G660ofDYdo"))
        let foBtn = (fo, Hanyu(hanyu: "fo", koreanPronounce: "포어", desc: "", videoUrl: "9CO6S4Ad4vU"))
        let fuBtn = (fu, Hanyu(hanyu: "fu", koreanPronounce: "푸", desc: "", videoUrl: "DrOBWrmI58w"))
        let daBtn = (da, Hanyu(hanyu: "da", koreanPronounce: "따", desc: "", videoUrl: "z4lVATWy9pg"))
        let deBtn = (de, Hanyu(hanyu: "de", koreanPronounce: "뜨어", desc: "", videoUrl: "Ne-TP_vANxo"))
        let diBtn = (di, Hanyu(hanyu: "di", koreanPronounce: "띠", desc: "", videoUrl: "ARCqNlnm4kQ"))
        let duBtn = (du, Hanyu(hanyu: "du", koreanPronounce: "뚜", desc: "", videoUrl: "svZHFFrnZMg"))
        let taBtn = (ta, Hanyu(hanyu: "ta", koreanPronounce: "타", desc: "", videoUrl: "HsNMSC0Tmik"))
        let teBtn = (te, Hanyu(hanyu: "te", koreanPronounce: "트어", desc: "", videoUrl: "aZhsQe99DNQ"))
        let tiBtn = (ti, Hanyu(hanyu: "ti", koreanPronounce: "티", desc: "", videoUrl: "ykDJiHYpxXs"))
        let tuBtn = (tu, Hanyu(hanyu: "tu", koreanPronounce: "투", desc: "", videoUrl: "1EhPGKnLvkY"))
        let naBtn = (na, Hanyu(hanyu: "na", koreanPronounce: "나", desc: "", videoUrl: "MoU06QOB-jU"))
        let neBtn = (ne, Hanyu(hanyu: "ne", koreanPronounce: "느어", desc: "", videoUrl: "bWwnqXRnGQ8"))
        let niBtn = (ni, Hanyu(hanyu: "ni", koreanPronounce: "니", desc: "", videoUrl: "ZOFJunbS9kE"))
        let nuBtn = (nu, Hanyu(hanyu: "nu", koreanPronounce: "누", desc: "", videoUrl: "oLN0TIHSTf8"))
        let nüBtn = (nü, Hanyu(hanyu: "nü", koreanPronounce: "뉘", desc: "", videoUrl: "Ka5Lg4sEyOI"))
        let laBtn = (la, Hanyu(hanyu: "la", koreanPronounce: "라", desc: "", videoUrl: "LLF7enNjxkA"))
        let leBtn = (le, Hanyu(hanyu: "le", koreanPronounce: "르어", desc: "", videoUrl: "f0_dmFl1u90"))
        let liBtn = (li, Hanyu(hanyu: "li", koreanPronounce: "리", desc: "", videoUrl: "08jWLfe7s40"))
        let luBtn = (lu, Hanyu(hanyu: "lu", koreanPronounce: "루", desc: "", videoUrl: "2AS4vvesCYk"))
        let lüBtn = (lü, Hanyu(hanyu: "lü", koreanPronounce: "뤼", desc: "", videoUrl: "uugwkVMfbQM"))
        let gaBtn = (ga, Hanyu(hanyu: "ga", koreanPronounce: "까", desc: "", videoUrl: "9rR33-SIQDI"))
        let geBtn = (ge, Hanyu(hanyu: "ge", koreanPronounce: "끄어", desc: "", videoUrl: "-RxZwkwuHBM"))
        let guBtn = (gu, Hanyu(hanyu: "gu", koreanPronounce: "꾸", desc: "", videoUrl: "iFYTdHbK-10"))
        let kaBtn = (ka, Hanyu(hanyu: "ka", koreanPronounce: "카", desc: "", videoUrl: "17QaT5MYTGc"))
        let keBtn = (ke, Hanyu(hanyu: "ke", koreanPronounce: "크어", desc: "", videoUrl: "-3R368lCt7A"))
        let kuBtn = (ku, Hanyu(hanyu: "ku", koreanPronounce: "쿠", desc: "", videoUrl: "t9oB72kzd00"))
        let haBtn = (ha, Hanyu(hanyu: "ha", koreanPronounce: "하", desc: "", videoUrl: "_qOGsWs0of4"))
        let heBtn = (he, Hanyu(hanyu: "he", koreanPronounce: "흐어", desc: "", videoUrl: "AoxJkHs8UTQ"))
        let huBtn = (hu, Hanyu(hanyu: "hu", koreanPronounce: "후", desc: "", videoUrl: "-ptBnbYJLRA"))
        let jiBtn = (ji, Hanyu(hanyu: "ji", koreanPronounce: "지", desc: "", videoUrl: "xmY2Pzup1WQ"))
        let jüBtn = (jü, Hanyu(hanyu: "ju", koreanPronounce: "쥐", desc: "", videoUrl: "VxQdoc1XDDQ"))
        let qiBtn = (qi, Hanyu(hanyu: "qi", koreanPronounce: "치", desc: "", videoUrl: "SlCVpCLqasw"))
        let qüBtn = (qü, Hanyu(hanyu: "qu", koreanPronounce: "취", desc: "", videoUrl: "5v7QhHMhqiE"))
        let xiBtn = (xi, Hanyu(hanyu: "xi", koreanPronounce: "시", desc: "", videoUrl: "_QSiKPxqyQg"))
        let xüBtn = (xü, Hanyu(hanyu: "xu", koreanPronounce: "쉬", desc: "", videoUrl: "Efq2aldjYso"))
        let zhaBtn = (zha, Hanyu(hanyu: "zha", koreanPronounce: "자", desc: "", videoUrl: "tfu6eBfgkAM"))
        let zheBtn = (zhe, Hanyu(hanyu: "zhe", koreanPronounce: "저", desc: "", videoUrl: "8upm-rpoqFA"))
        let zhiBtn = (zhi, Hanyu(hanyu: "zhi", koreanPronounce: "즈", desc: "", videoUrl: "_dK-zCrfiwQ"))
        let zhuBtn = (zhu, Hanyu(hanyu: "zhu", koreanPronounce: "주", desc: "", videoUrl: "_OgpqiLeoWk"))
        let chaBtn = (cha, Hanyu(hanyu: "cha", koreanPronounce: "차", desc: "", videoUrl: "T71NdLg8HJg"))
        let cheBtn = (che, Hanyu(hanyu: "che", koreanPronounce: "처", desc: "", videoUrl: "x6dctYkEOKA"))
        let chiBtn = (chi, Hanyu(hanyu: "chi", koreanPronounce: "츠", desc: "", videoUrl: "PkUidW2eZ0U"))
        let chuBtn = (chu, Hanyu(hanyu: "chu", koreanPronounce: "추", desc: "", videoUrl: "owkV97y1-QY"))
        let shaBtn = (sha, Hanyu(hanyu: "sha", koreanPronounce: "사", desc: "", videoUrl: "f0uQVO_aMnw"))
        let sheBtn = (she, Hanyu(hanyu: "she", koreanPronounce: "셔", desc: "", videoUrl: "-g4EuYG_po4"))
        let shiBtn = (shi, Hanyu(hanyu: "shi", koreanPronounce: "스", desc: "", videoUrl: "stfVRsHsZKI"))
        let shuBtn = (shu, Hanyu(hanyu: "shu", koreanPronounce: "수", desc: "", videoUrl: "qry5VOmnNcE"))
        let reBtn = (re, Hanyu(hanyu: "re", koreanPronounce: "르어", desc: "", videoUrl: "hvIobl-Q7JU"))
        let riBtn = (ri, Hanyu(hanyu: "ri", koreanPronounce: "르", desc: "", videoUrl: "T6bdqk06i1E"))
        let ruBtn = (ru, Hanyu(hanyu: "ru", koreanPronounce: "루", desc: "", videoUrl: "kLCIFi2kpG0"))
        let zaBtn = (za, Hanyu(hanyu: "za", koreanPronounce: "찌", desc: "", videoUrl: "dsDXTvwdtSY"))
        let zeBtn = (ze, Hanyu(hanyu: "ze", koreanPronounce: "쩌", desc: "", videoUrl: "vrlLADI10sk"))
        let ziBtn = (zi, Hanyu(hanyu: "zi", koreanPronounce: "쯔", desc: "", videoUrl: "B3D-uOc6sLA"))
        let zuBtn = (zu, Hanyu(hanyu: "zu", koreanPronounce: "쭈", desc: "", videoUrl: "4-dMp-jjufM"))
        let caBtn = (ca, Hanyu(hanyu: "ca", koreanPronounce: "차", desc: "", videoUrl: "q1mAwPQrNLI"))
        let ceBtn = (ce, Hanyu(hanyu: "ce", koreanPronounce: "처", desc: "", videoUrl: "P0GoVWw4kcA"))
        let ciBtn = (ci, Hanyu(hanyu: "ci", koreanPronounce: "츠", desc: "", videoUrl: "nD1uG3_HirQ"))
        let cuBtn = (cu, Hanyu(hanyu: "cu", koreanPronounce: "추", desc: "", videoUrl: "JecLTPZtlhk"))
        let saBtn = (sa, Hanyu(hanyu: "sa", koreanPronounce: "싸", desc: "", videoUrl: "kurzc1exgb8"))
        let seBtn = (se, Hanyu(hanyu: "se", koreanPronounce: "쓰어", desc: "", videoUrl: "fkKYgt594rQ"))
        let siBtn = (si, Hanyu(hanyu: "si", koreanPronounce: "쓰", desc: "", videoUrl: "2v57X_Y9kw0"))
        let suBtn = (su, Hanyu(hanyu: "su", koreanPronounce: "쑤", desc: "", videoUrl: "j4L8zysLtxA"))
        
        let buttons = [baBtn, boBtn, biBtn, buBtn, paBtn, poBtn, piBtn, puBtn, maBtn, moBtn, meBtn, miBtn, muBtn, faBtn, foBtn, fuBtn, daBtn, deBtn, diBtn, duBtn, taBtn, teBtn, tiBtn, tuBtn, naBtn, neBtn, niBtn, nuBtn, nüBtn, laBtn, leBtn, liBtn, luBtn, lüBtn, gaBtn, geBtn, guBtn, kaBtn, keBtn, kuBtn, haBtn, heBtn, huBtn, jiBtn, jüBtn, qiBtn, qüBtn, xiBtn, xüBtn, zhaBtn, zheBtn, zhiBtn, zhuBtn, chaBtn, cheBtn, chiBtn, chuBtn, shaBtn, sheBtn, shiBtn, shuBtn, reBtn, riBtn, ruBtn, zaBtn, zeBtn, ziBtn, zuBtn, caBtn, ceBtn, ciBtn, cuBtn, saBtn, seBtn, siBtn, suBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
    }
    
    
}

