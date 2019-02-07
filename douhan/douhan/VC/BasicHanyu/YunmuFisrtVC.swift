//
//  YunmuFisrtVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class YunmuFisrtVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var a: HanyuBtn!
    @IBOutlet weak var o: HanyuBtn!
    @IBOutlet weak var e: HanyuBtn!
    @IBOutlet weak var i: HanyuBtn!
    @IBOutlet weak var u: HanyuBtn!
    @IBOutlet weak var ü: HanyuBtn!
    @IBOutlet weak var ai: HanyuBtn!
    @IBOutlet weak var ei: HanyuBtn!
    @IBOutlet weak var ao: HanyuBtn!
    @IBOutlet weak var ou: HanyuBtn!
    @IBOutlet weak var an: HanyuBtn!
    @IBOutlet weak var en: HanyuBtn!
    @IBOutlet weak var ang: HanyuBtn!
    @IBOutlet weak var eng: HanyuBtn!
    @IBOutlet weak var ong: HanyuBtn!
    @IBOutlet weak var er: HanyuBtn!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
    }
    
    func setHanyuBtn(){
        let aBtn = (a, Hanyu(hanyu: "a", koreanPronounce: "아", desc: "입을 자연스럽게 벌려 우리말 [아]처럼 발음하되, 우리말 [아]보다 입을 크게 벌립니다.", videoUrl: "CF-uZyk6ttc"))
        let oBtn = (o, Hanyu(hanyu: "o", koreanPronounce: "오어", desc: "한국말보다 입 모양을 크게 한 상태에서 [오]를 발음한 후, [어]발음을 살짝 붙여줍니다.  마치 입모양은 [오]발음인데 소리는 [어]발음을 내는 것처럼 한 음절에서 두 발음을 해줍니다.", videoUrl: "wib_jutL3SU"))
        let eBtn = (e, Hanyu(hanyu: "e", koreanPronounce: "으어", desc: "한국말로 [으어]를 발음하되, [으어]의 [으]부분을 작지만 분명하게 발음하고 나머지[어]는 [으]보다 좀 더 크게 발음합니다. 목과 혀뿌리에서 소리가 올라오는 느낌이 듭니다.", videoUrl: "wib_jutL3SU"))
        let iBtn = (i, Hanyu(hanyu: "i", koreanPronounce: "이", desc: "한국말 [이]보다 입을 옆으로 벌리면서 강하게  발음하고, 발음 끝을 흐립니다. 우리나라의 [이]발음보다 영어[y]의 발음과 가깝습니다. 또 성모없이 단독으로 쓰이면 yi로 표기합니다.", videoUrl: "wib_jutL3SU"))
        let uBtn = (u, Hanyu(hanyu: "u", koreanPronounce: "우", desc: "입술을 동그랗게 모은 상태에서 약간 앞으로 밀어주듯이 우리말 [우]처럼 발음합니다. 성모 없이 단독으로 쓰이면 wu라고 표기합니다.", videoUrl: "wib_jutL3SU"))
        let üBtn = (ü, Hanyu(hanyu: "ü", koreanPronounce: "위", desc: "입술을 동그랗게 모은 상태에서 [위]라고 발음한 후, 입술모양을 그대로 유지합니다. 발음 끝에 [위이]처럼 입술 모양이 옆으로 펴지면 안됩니다. 성모 없이 단독으로 쓰이면 yu라고 표기하고 위에 있던 [¨]표시를 하지 않습니다. (¨)", videoUrl: "wib_jutL3SU"))
        let aiBtn = (ai, Hanyu(hanyu: "ai", koreanPronounce: "아이", desc: "입을 벌려 [아]를 발음한 상태에서 [이]발음으로 마칩니다. 운모 a와 i가 결합되어 있는 형태로 [아]에 강세가 있고 길고 강하게 [이]는 짧고 약하게 발음합니다.", videoUrl: "wib_jutL3SU"))
        let eiBtn = (ei, Hanyu(hanyu: "ei", koreanPronounce: "에이", desc: "모음 e는 성모와 만나면 [으어]로 발음하지만 뒤에 다른 운모와 결합하면 [에]로 결합하면 [에]로 발음합니다. 따라서 ei는 [에]로 시작해서 [이]로 끝나며, 앞에 있는 [에]를 강하게 뒤의 [이]는 약하게 발음합니다.", videoUrl: "wib_jutL3SU"))
        let aoBtn = (ao, Hanyu(hanyu: "ao", koreanPronounce: "아오", desc: "[아]로 시작해서 [오]로 끝나는데 뒤에 오는 [오]는 [오]와 [어]의 중간 발음으로 둥글게 모은 입술을 풀어 가볍게 발음합니다.", videoUrl: "wib_jutL3SU"))
        let ouBtn = (ou, Hanyu(hanyu: "ou", koreanPronounce: "어우", desc: "앞에오는 o는 [오]와 [어]의 중간쯤으로 돌리기 때문에 [어우]로 읽어주는 것이 맞지만, 성모와 함께 음절을 이루면 [오우]로 들리는 경우도 있습니다.", videoUrl: "wib_jutL3SU"))
        let anBtn = (an, Hanyu(hanyu: "an", koreanPronounce: "안", desc: "입을 벌려 발음하는 [아]에 n을 붙여 우리말 [안]처럼 발음합니다.", videoUrl: "wib_jutL3SU"))
        let enBtn = (en, Hanyu(hanyu: "en", koreanPronounce: "으언", desc: "e모음 다음에 n, ng이 와서 하나의 운모를 만들면 앞에 오는 e는 [으어]로 발음합니다. En은 [으어]로 시작해서 n으로 끝나 우리말 [으언]처럼 발음하되 짧게 한 음절로 발음합니다.", videoUrl: "wib_jutL3SU"))
        let angBtn = (ang, Hanyu(hanyu: "ang", koreanPronounce: "앙", desc: "a로 시작하여 ng가 오면[앙]으로 발음하는데 이 때 목에서 나온 공기가 코로 들어가는 소리가 납니다.", videoUrl: "wib_jutL3SU"))
        let engBtn = (eng, Hanyu(hanyu: "eng", koreanPronounce: "으엉", desc: "e다음에 ng가 오면 앞에 e는 [으어]로 발음합니다. 이 eng 역시 콧소리 느낌으로 [으엉]으로 발음하되 길게 끌지 않고 한 음절로 짧게 발음합니다.", videoUrl: "wib_jutL3SU"))
        let ongBtn = (ong, Hanyu(hanyu: "ong", koreanPronounce: "옹", desc: "ong [옹]: 앞에 오는 o의 [오]와 [우]의 중간 발음으로 시작해서 콧소리 ng로 끝나는 발음입니다.", videoUrl: "wib_jutL3SU"))
        let erBtn = (er, Hanyu(hanyu: "er", koreanPronounce: "얼", desc: "[으어]발음에 혀를 들어 올려 발음하는 r을 추가하여 [얼]로 발음합니다. Er은 성모 없이 단독으로 표기하며 성모와 같이 쓰이지 않습니다.", videoUrl: "wib_jutL3SU"))
        let buttons = [aBtn, oBtn, eBtn, iBtn, uBtn, üBtn, aiBtn, eiBtn, aoBtn, ouBtn, anBtn, enBtn, angBtn, engBtn, ongBtn, erBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
    }
}
