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
        
        let nüBtn = (nü, Hanyu(hanyu: "nü", koreanPronounce: "뉘", desc: "", videoUrl: "A-nSK2IIJHA"))
        let nüeBtn = (nüe, Hanyu(hanyu: "nüe", koreanPronounce: "뉘에", desc: "", videoUrl: "mwR2OaYQ_hQ"))
        let lüBtn = (lü, Hanyu(hanyu: "lü", koreanPronounce: "뤼", desc: "", videoUrl: "4bWcx19TEVY"))
        let lüeBtn = (lüe, Hanyu(hanyu: "lüe", koreanPronounce: "뤼에", desc: "", videoUrl: "eX3MnWZ55aY"))
        let jüBtn = (jü, Hanyu(hanyu: "ju", koreanPronounce: "쥐", desc: "", videoUrl: defualtURL))
        let jüeBtn = (jüe, Hanyu(hanyu: "jue", koreanPronounce: "쥐에", desc: "", videoUrl: "AyCNvscotvQ"))
        let jüanBtn = (jüan, Hanyu(hanyu: "juan", koreanPronounce: "쥐엔", desc: "", videoUrl: "xr5PAd4_fg0"))
        let jünBtn = (jün, Hanyu(hanyu: "jun", koreanPronounce: "쥔", desc: "", videoUrl: "L3PC96tE2rk"))
        let qüBtn = (qü, Hanyu(hanyu: "qu", koreanPronounce: "취", desc: "", videoUrl: "Oie_fqOENB8"))
        let qüeBtn = (qüe, Hanyu(hanyu: "que", koreanPronounce: "취에", desc: "", videoUrl: "qEYtQCtx5tg"))
        let qüanBtn = (qüan, Hanyu(hanyu: "quan", koreanPronounce: "취엔", desc: "", videoUrl: "eCuaRhQA5Nc"))
        let qünBtn = (qün, Hanyu(hanyu: "qun", koreanPronounce: "췬", desc: "", videoUrl: "aeKP-y-7rvQ"))
        let xüBtn = (xü, Hanyu(hanyu: "xu", koreanPronounce: "쉬", desc: "", videoUrl: "qQoOojbAxu8"))
        let xüeBtn = (xüe, Hanyu(hanyu: "xue", koreanPronounce: "쉬에", desc: "", videoUrl: "N2uROK8xdr8"))
        let xüanBtn = (xüan, Hanyu(hanyu: "xuan", koreanPronounce: "쉬엔", desc: "", videoUrl: "980qGFkfY2w"))
        let xünBtn = (xün, Hanyu(hanyu: "xun", koreanPronounce: "쉰", desc: "", videoUrl: "uAAzbuNdpjY"))
        
        let buttons = [nüBtn, nüeBtn, lüBtn, lüeBtn, jüBtn, jüeBtn, jüanBtn, jünBtn, qüBtn, qüeBtn, qüanBtn, qünBtn, xüBtn, xüeBtn, xüanBtn, xünBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }
    
}
