//
//  WholePinyinEighthDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class WholePinyinEighthDetailVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var nü: HanyuBtn!
    @IBOutlet weak var nüe: HanyuBtn!
    @IBOutlet weak var lü: HanyuBtn!
    @IBOutlet weak var lüe: HanyuBtn!
    @IBOutlet weak var jü: HanyuBtn!
    @IBOutlet weak var jüe: HanyuBtn!
    @IBOutlet weak var jüan: HanyuBtn!
    @IBOutlet weak var jün: HanyuBtn!
    @IBOutlet weak var qü: HanyuBtn!
    @IBOutlet weak var qüe: HanyuBtn!
    @IBOutlet weak var qüan: HanyuBtn!
    @IBOutlet weak var qün: HanyuBtn!
    @IBOutlet weak var xü: HanyuBtn!
    @IBOutlet weak var xüe: HanyuBtn!
    @IBOutlet weak var xüan: HanyuBtn!
    @IBOutlet weak var xün: HanyuBtn!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
    }
    
    func setHanyuBtn(){
        
        let nüBtn = (nü, Hanyu(hanyu: "nü", koreanPronounce: "뉘", desc: "", videoUrl: "wib_jutL3SU"))
        let nüeBtn = (nüe, Hanyu(hanyu: "nüe", koreanPronounce: "뉘에", desc: "", videoUrl: "wib_jutL3SU"))
        let lüBtn = (lü, Hanyu(hanyu: "lü", koreanPronounce: "뤼", desc: "", videoUrl: "wib_jutL3SU"))
        let lüeBtn = (lüe, Hanyu(hanyu: "lüe", koreanPronounce: "뤼에", desc: "", videoUrl: "wib_jutL3SU"))
        let jüBtn = (jü, Hanyu(hanyu: "jü", koreanPronounce: "쥐", desc: "", videoUrl: "wib_jutL3SU"))
        let jüeBtn = (jüe, Hanyu(hanyu: "jüe", koreanPronounce: "쥐에", desc: "", videoUrl: "wib_jutL3SU"))
        let jüanBtn = (jüan, Hanyu(hanyu: "jüan", koreanPronounce: "쥐엔", desc: "", videoUrl: "wib_jutL3SU"))
        let jünBtn = (jün, Hanyu(hanyu: "jün", koreanPronounce: "쥔", desc: "", videoUrl: "wib_jutL3SU"))
        let qüBtn = (qü, Hanyu(hanyu: "qü", koreanPronounce: "취", desc: "", videoUrl: "wib_jutL3SU"))
        let qüeBtn = (qüe, Hanyu(hanyu: "qüe", koreanPronounce: "취에", desc: "", videoUrl: "wib_jutL3SU"))
        let qüanBtn = (qüan, Hanyu(hanyu: "qüan", koreanPronounce: "취엔", desc: "", videoUrl: "wib_jutL3SU"))
        let qünBtn = (qün, Hanyu(hanyu: "qün", koreanPronounce: "췬", desc: "", videoUrl: "wib_jutL3SU"))
        let xüBtn = (xü, Hanyu(hanyu: "xü", koreanPronounce: "쉬", desc: "", videoUrl: "wib_jutL3SU"))
        let xüeBtn = (xüe, Hanyu(hanyu: "xüe", koreanPronounce: "쉬에", desc: "", videoUrl: "wib_jutL3SU"))
        let xüanBtn = (xüan, Hanyu(hanyu: "xüan", koreanPronounce: "쉬엔", desc: "", videoUrl: "wib_jutL3SU"))
        let xünBtn = (xün, Hanyu(hanyu: "xün", koreanPronounce: "쉰", desc: "", videoUrl: "wib_jutL3SU"))
        
        let buttons = [nüBtn, nüeBtn, lüBtn, lüeBtn, jüBtn, jüeBtn, jüanBtn, jünBtn, qüBtn, qüeBtn, qüanBtn, qünBtn, xüBtn, xüeBtn, xüanBtn, xünBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }
    
}
