//
//  YunmuSecondVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class YunmuSecondVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var ia: HanyuBtn!
    @IBOutlet weak var iao: HanyuBtn!
    @IBOutlet weak var ie: HanyuBtn!
    @IBOutlet weak var iou: HanyuBtn!
    @IBOutlet weak var ian: HanyuBtn!
    @IBOutlet weak var in_: HanyuBtn!
    @IBOutlet weak var iang: HanyuBtn!
    @IBOutlet weak var ing: HanyuBtn!
    @IBOutlet weak var iong: HanyuBtn!
    @IBOutlet weak var ua: HanyuBtn!
    @IBOutlet weak var uo: HanyuBtn!
    @IBOutlet weak var uai: HanyuBtn!
    @IBOutlet weak var uei: HanyuBtn!
    @IBOutlet weak var uan: HanyuBtn!
    @IBOutlet weak var uen: HanyuBtn!
    @IBOutlet weak var uang: HanyuBtn!
    @IBOutlet weak var ueng: HanyuBtn!
    @IBOutlet weak var üe: HanyuBtn!
    @IBOutlet weak var üan: HanyuBtn!
    @IBOutlet weak var ün: HanyuBtn!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
    }
    
    func setHanyuBtn(){
        let iaBtn = (ia, Hanyu(hanyu: "ia", koreanPronounce: "이아", desc: "우리말의 [이아]처럼 발음하되 [이]는 짧게 [아]를 길게 합니다. ia가 성모 없이 독립적인 음절을 이루면 ya라고 표기하고 [야]로 발음합니다.", videoUrl: "wib_jutL3SU"))
        let iaoBtn = (iao, Hanyu(hanyu: "iao", koreanPronounce: "이아오", desc: "우리말의 [이아오]처럼 발음하는데 [아]를 강하게 합니다. 우리말로 표기하자면 [이아오]로 길지만 성모와 같이 쓰여 한 음절을 이루기 때문에 실제 발음은 짧은 시간에 이루어집니다. 성모 없이 단독으로 쓰이면 yao로 표기하고 [야오]로 발음합니다.", videoUrl: "wib_jutL3SU"))
        let ieBtn = (ie, Hanyu(hanyu: "ie", koreanPronounce: "이에", desc: "첫소리는 [이]로 시작해서 [에]로 끝마칩니다. e는 다른 운모와 만나면 [에]로 발음합니다. 또 성모 없이 단독으로 쓰이면 ye로 표기합니다.", videoUrl: "wib_jutL3SU"))
        let iouBtn = (iou, Hanyu(hanyu: "iou", koreanPronounce: "이어우", desc: "i와 ou가 만나 하나의 운모가 된 형태로 [이어우]로 발음합니다. 그런데 이 운모는 성모와 만나 음절을 이루면 iu로 표기합니다. 예를 들어 j+iou=jiu[지여우], n+iou=niu[니여우]로 표기하지요. 하지만 발음은 가운데 o가 없어지지 않고 살아있습니다. 또 성모 없이 단독으로 쓰이면 you로 표기하고 [여우]로 발음합니다.", videoUrl: "wib_jutL3SU"))
        let ianBtn = (ian, Hanyu(hanyu: "ian", koreanPronounce: "이엔", desc: "i와 an이 결합한 운모지만 [이안]이 아닌 [이엔]으로 발음합니다. 성모 없이 단독으로 쓰이면 yan으로 표기합니다.", videoUrl: "wib_jutL3SU"))
        let in_Btn = (in_, Hanyu(hanyu: "in", koreanPronounce: "인", desc: "우리말의 [인]처럼 발음합니다. 단독으로 쓸 경우 yin으로 표기합니다.", videoUrl: "wib_jutL3SU"))
        let iangBtn = (iang, Hanyu(hanyu: "iang", koreanPronounce: "이앙", desc: "[이]로 시작하여 [이앙]으로 발음합니다. 성모 없이 단독으로 쓰면 yang으로 표기하고 [양]으로 발음합니다.", videoUrl: "wib_jutL3SU"))
        let ingBtn = (ing, Hanyu(hanyu: "ing", koreanPronounce: "잉", desc: "콧소리가 들어간 ng로 끝나는 발음으로 실제 [이응]이나 [이엉]으로 들리기도 합니다. 성모 없이 단독으로 쓰면 ying으로 표기합니다.", videoUrl: "wib_jutL3SU"))
        let iongBtn = (iong, Hanyu(hanyu: "iong", koreanPronounce: "이용", desc: "콧소리가 들어간 ng로 끝나는 발음으로 [이용] 혹은 [이융]으로 들립니다. 성모 없이 단독으로 쓰면 yong으로 표기하고 [용]으로 줄여서 발음합니다.", videoUrl: "wib_jutL3SU"))
        let uaBtn = (ua, Hanyu(hanyu: "ua", koreanPronounce: "우아", desc: "우리말 [우아]처럼 발음하되 [우]보다 [아]를 더 길고 강하게 해줍니다. 성모 없이 단독으로 쓰이면 wa로 표기하고 [와]로 발음합니다.", videoUrl: "wib_jutL3SU"))
        let uoBtn = (uo, Hanyu(hanyu: "uo", koreanPronounce: "우어", desc: "입을 앞으로 내밀어 둥글게 말아 [우어]로 발음합니다. [어]는 [어]와 [우]의 중간음이라고 생각하면 됩니다. 성모 없이 단독으로 쓰면 wo로 표기하고 [워]로 발음합니다.", videoUrl: "wib_jutL3SU"))
        let uaiBtn = (uai, Hanyu(hanyu: "uai", koreanPronounce: "우아이", desc: "입을 앞으로 내밀어 둥글게 말아 [우아이]로 발음하되 [아]에 강세를 둡니다. 성모가 없는 경우 wai로 표기하고 [와이]로 발음합니다.", videoUrl: "wib_jutL3SU"))
        let ueiBtn = (uei, Hanyu(hanyu: "uei", koreanPronounce: "우에이", desc: "입을 앞으로 내밀어 [우에이]로 발음하고 성모와 만나면 ui로 표기합니다. 예를 들어 d+uei=dui[뚜에이], g+uei=gui[꾸에이]와 같이 한어병음표기는 ui로 하되 실제 발음은 가운데 사라진 e[에]를 유지합니다. 성모가 없으면 wei로 표기하고 [웨이]로 발음합니다.", videoUrl: "wib_jutL3SU"))
        let uanBtn = (uan, Hanyu(hanyu: "uan", koreanPronounce: "우안", desc: "입을 모아 앞으로 내민 상태에서 [우안]으로 발음합니다. 역시 강세는 a에 둡니다.", videoUrl: "wib_jutL3SU"))
        let uenBtn = (uen, Hanyu(hanyu: "uen", koreanPronounce: "우언", desc: "uen은 u와 en이 결합하여 만들어진 발음이므로 정확한 발음은 [우언]입니다. 하지만, uen이 성모(자음)와 만나면 un으로 표기하고 발음이 [운]에 가깝게 변합니다. 예를 들어, d+uen → dun[뚠], k+uen → kun[쿤]으로 변하는 것입니다. 그러나 중국인의 발음을 주의 깊게 들어보면 사이에 e발음이 약간 들어있어 [뚜언], [쿠언]으로 들립니다.", videoUrl: "wib_jutL3SU"))
        let uangBtn = (uang, Hanyu(hanyu: "uang", koreanPronounce: "우앙", desc: "우리말 [우앙]처럼 발음합니다.", videoUrl: "wib_jutL3SU"))
        let uengBtn = (ueng, Hanyu(hanyu: "ueng", koreanPronounce: "우엉", desc: "우리말 [우엉]처럼 발음합니다.", videoUrl: "wib_jutL3SU"))
        let üeBtn = (üe, Hanyu(hanyu: "üe", koreanPronounce: "위에", desc: "ü의 [위] 발음과 e의 [에] 발음이 결합한 형태로 우리말 [위에]처럼 발음합니다. 이때 ü의 발음 [위]는 입술을 내밀어 둥글게 모은 모양을 유지해야 합니다.", videoUrl: "wib_jutL3SU"))
        let üanBtn = (üan, Hanyu(hanyu: "üan", koreanPronounce: "위엔", desc: "입술 모양을 둥글게 모은 상태에서 [위]발음을 하고 [이엔]을 붙여줍니다. 중국에서는 [위안]에 가깝게 발음하기로 합니다.", videoUrl: "wib_jutL3SU"))
        let ünBtn = (ün, Hanyu(hanyu: "ün", koreanPronounce: "윈", desc: "ü 발음에 n을 붙여서 [윈]으로 발음하는데,역시 입술 모양에 주의해야 합니다.", videoUrl: "wib_jutL3SU"))
        let buttons = [iaBtn, iaoBtn, ieBtn, iouBtn, ianBtn, in_Btn, iangBtn, ingBtn, iongBtn, uaBtn, uoBtn, uaiBtn, ueiBtn, uanBtn, uenBtn, uangBtn, uengBtn, üeBtn, üanBtn, ünBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
    }
    
}
