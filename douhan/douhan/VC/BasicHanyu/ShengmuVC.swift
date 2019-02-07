//
//  ShengmuVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class ShengmuVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var b: HanyuBtn!
    @IBOutlet weak var p: HanyuBtn!
    @IBOutlet weak var m: HanyuBtn!
    @IBOutlet weak var f: HanyuBtn!
    @IBOutlet weak var d: HanyuBtn!
    @IBOutlet weak var t: HanyuBtn!
    @IBOutlet weak var n: HanyuBtn!
    @IBOutlet weak var l: HanyuBtn!
    @IBOutlet weak var g: HanyuBtn!
    @IBOutlet weak var k: HanyuBtn!
    @IBOutlet weak var h: HanyuBtn!
    @IBOutlet weak var j: HanyuBtn!
    @IBOutlet weak var q: HanyuBtn!
    @IBOutlet weak var x: HanyuBtn!
    @IBOutlet weak var zh: HanyuBtn!
    @IBOutlet weak var ch: HanyuBtn!
    @IBOutlet weak var sh: HanyuBtn!
    @IBOutlet weak var r: HanyuBtn!
    @IBOutlet weak var z: HanyuBtn!
    @IBOutlet weak var c: HanyuBtn!
    @IBOutlet weak var s: HanyuBtn!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
    }
    
    
    func setHanyuBtn(){
        let bBtn = (b, Hanyu(hanyu: "b", koreanPronounce: "ㅃ", desc: "한국어의 ‘ㅃ’에 대응 됩니다. ā와 결합하여 [빠] 로 발음됩니다.", videoUrl: "wib_jutL3SU"))
        let pBtn = (p, Hanyu(hanyu: "p", koreanPronounce: "ㅍ", desc: "한국어의 ‘ㅍ’에 대응 됩니다. ā와 결합하여 pā[파] 로 발음됩니다.", videoUrl: "wib_jutL3SU"))
        let mBtn = (m, Hanyu(hanyu: "m", koreanPronounce: "ㅁ", desc: "한국어의 ‘ㅁ’에 대응 됩니다. ā와 결합하여 mā[마] 로 발음됩니다.", videoUrl: "wib_jutL3SU"))
        let fBtn = (f, Hanyu(hanyu: "f", koreanPronounce: "ㅎ/ㅍ", desc: "한국어의 ‘ㅎ’과 ‘ㅍ’의 중간 발음에 대응 됩니다. 영어의 ‘f’와 비슷하게 윗니를 아랫입술에 가볍게 대고 그 틈으로 숨을 내쉬며 마찰시켜 발음합니다. ā와 결합하여 fā[화] 로 발음하나 ‘파’처럼 들립니다.", videoUrl: "wib_jutL3SU"))
        let dBtn = (d, Hanyu(hanyu: "d", koreanPronounce: "ㄸ", desc: "한국어의 ‘ㄸ’에 대응 됩니다. à와 결합하여 dà[따] 로 발음됩니다.", videoUrl: "wib_jutL3SU"))
        let tBtn = (t, Hanyu(hanyu: "t", koreanPronounce: "ㅌ", desc: "한국어의 ‘ㅌ’에 대응 됩니다. à와 결합하여 tà[타] 로 발음됩니다", videoUrl: "wib_jutL3SU"))
        let nBtn = (n, Hanyu(hanyu: "n", koreanPronounce: "ㄴ", desc: "한국어의 ‘ㄴ’에 대응 됩니다. à와 결합하여 nà[나] 로 발음됩니다", videoUrl: "wib_jutL3SU"))
        let lBtn = (l, Hanyu(hanyu: "l", koreanPronounce: "ㄹ", desc: "한국어의 ‘ㄹ’에 대응 됩니다. à와 결합하여 là[라] 로 발음됩니다", videoUrl: "wib_jutL3SU"))
        let gBtn = (g, Hanyu(hanyu: "g", koreanPronounce: "ㄲ", desc: "한국어의 ‘ㄲ’에 대응 됩니다. ē와 결합하여 gē[꺼] 로 발음됩니다", videoUrl: "wib_jutL3SU"))
        let kBtn = (k, Hanyu(hanyu: "k", koreanPronounce: "ㅋ", desc: "한국어의 ‘ㅋ’에 대응 됩니다. ē와 결합하여 kē[커] 로 발음됩니다", videoUrl: "wib_jutL3SU"))
        let hBtn = (h, Hanyu(hanyu: "h", koreanPronounce: "ㅎ", desc: "한국어의 ‘ㅎ’에 대응 됩니다. ā와 결합하여 hā[하] 로 발음됩니다", videoUrl: "wib_jutL3SU"))
        let jBtn = (j, Hanyu(hanyu: "j", koreanPronounce: "ㅈ/ㅉ", desc: "한국어의 ‘ㅈ’와 ‘ㅉ’에 대응 됩니다. ‘j’뒤에 어떤 운모 및 성조가 붙느냐에 따라 한국어의 ㅈ에 대응되냐, ㅉ에 대응되냐 결정됩니다. 예를 들어 jiāojí의 발음에서 jiāo 의 j는 한국어의 ㅉ에 대응 되는 반면, jí의 j는 ㅈ에 대응됩니다. 만약 ji에 1성이 붙어 jī가 된다면 한국어의 ㅉ에 대응 됩니다.", videoUrl: "wib_jutL3SU"))
        let qBtn = (q, Hanyu(hanyu: "q", koreanPronounce: "ㅊ", desc: "한국어의 ‘ㅊ’에 대응 됩니다. ì와 결합하여 qì[치] 로 발음됩니다", videoUrl: "wib_jutL3SU"))
        let xBtn = (x, Hanyu(hanyu: "x", koreanPronounce: "ㅅ", desc: "한국어의 ‘ㅅ’에 대응 됩니다. ī와 결합하여 xī[시] 로 발음됩니다", videoUrl: "wib_jutL3SU"))
        let zhBtn = (zh, Hanyu(hanyu: "zh", koreanPronounce: "ㅈ", desc: "입속에서 혀를 들어 입천장과 혀 사이의 공간을 만든 상태에서 숨을 내쉬면서 우리말 ‘ㅈ’발음을 해봅니다.", videoUrl: "wib_jutL3SU"))
        let chBtn = (ch, Hanyu(hanyu: "ch", koreanPronounce: "ㅊ", desc: "입속에서 혀를 들어 입천장과 혀 사이의 공간을 만든 상태에서 숨을 내쉬면서 우리말 ‘ㅊ’발음을 해봅니다.", videoUrl: "wib_jutL3SU"))
        let shBtn = (sh, Hanyu(hanyu: "sh", koreanPronounce: "ㅅ", desc: "입속에서 혀를 들어 입천장과 혀 사이의 공간을 만든 상태에서 숨을 내쉬면서 우리말 ‘ㅅ’발음을 해봅니다.", videoUrl: "wib_jutL3SU"))
        let rBtn = (r, Hanyu(hanyu: "r", koreanPronounce: "ㄹ", desc: "한국어의 ‘ㄹ’에 대응됩니다. ì와 결합하여 혀끝을 뒤쪽으로 더 말아 올려 입천장 쪽으로 가까이 보내발음 합니다.  우리말 [르]처럼 발음하되, 말아올린 혀와 입천장 사이의 좁은 통로를 통해 공기를 내보내어 발음하는 것입니다.", videoUrl: "wib_jutL3SU"))
        let zBtn = (z, Hanyu(hanyu: "z", koreanPronounce: "ㅉ", desc: "한국어의 ‘ㅉ’에 대응됩니다. á와 결합하여 혀끝을 앞니 뒤에서 붙였다 떼면서 우리말 [짜]처럼 발음합니다.", videoUrl: "wib_jutL3SU"))
        let cBtn = (c, Hanyu(hanyu: "c", koreanPronounce: "ㅊ", desc: "한국어의 ‘ㅊ’에 대응됩니다. ì와 결합하여 우리말 [츠]를 강하게 발음합니다.", videoUrl: "wib_jutL3SU"))
        let sBtn = (s, Hanyu(hanyu: "s", koreanPronounce: "ㅆ", desc: "한국어의 ‘ㅆ’에 대응됩니다. ì와 결합하여 우리말 [쓰]와 같이 윗니와 아랫니 사이로 공기를 내보내듯 강하게 발음합니다.", videoUrl: "wib_jutL3SU"))
        
        let buttons = [bBtn, pBtn, mBtn, fBtn, dBtn, tBtn, lBtn, nBtn, gBtn, kBtn, hBtn, jBtn, qBtn, xBtn, zhBtn, chBtn, shBtn, rBtn, zBtn, cBtn, sBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
    }
    
    
}
