//
//  WholePinyinFifthDetailVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class WholePinyinFifthDetailVC: UIViewController, SelectHanyuDelegate {
    
    @IBOutlet weak var bian: HanyuBtn!
    @IBOutlet weak var bin: HanyuBtn!
    @IBOutlet weak var bing: HanyuBtn!
    @IBOutlet weak var pian: HanyuBtn!
    @IBOutlet weak var pin: HanyuBtn!
    @IBOutlet weak var ping: HanyuBtn!
    @IBOutlet weak var mian: HanyuBtn!
    @IBOutlet weak var min: HanyuBtn!
    @IBOutlet weak var ming: HanyuBtn!
    @IBOutlet weak var dian: HanyuBtn!
    @IBOutlet weak var ding: HanyuBtn!
    @IBOutlet weak var tian: HanyuBtn!
    @IBOutlet weak var ting: HanyuBtn!
    @IBOutlet weak var nian: HanyuBtn!
    @IBOutlet weak var nin: HanyuBtn!
    @IBOutlet weak var niang: HanyuBtn!
    @IBOutlet weak var ning: HanyuBtn!
    @IBOutlet weak var lian: HanyuBtn!
    @IBOutlet weak var lin: HanyuBtn!
    @IBOutlet weak var liang: HanyuBtn!
    @IBOutlet weak var ling: HanyuBtn!
    @IBOutlet weak var jian: HanyuBtn!
    @IBOutlet weak var jin: HanyuBtn!
    @IBOutlet weak var jiang: HanyuBtn!
    @IBOutlet weak var jing: HanyuBtn!
    @IBOutlet weak var jiong: HanyuBtn!
    @IBOutlet weak var qian: HanyuBtn!
    @IBOutlet weak var qin: HanyuBtn!
    @IBOutlet weak var qiang: HanyuBtn!
    @IBOutlet weak var qing: HanyuBtn!
    @IBOutlet weak var qiong: HanyuBtn!
    @IBOutlet weak var xian: HanyuBtn!
    @IBOutlet weak var xin: HanyuBtn!
    @IBOutlet weak var xiang: HanyuBtn!
    @IBOutlet weak var xing: HanyuBtn!
    @IBOutlet weak var xiong: HanyuBtn!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        setHanyuBtn()
    }
    
    func setHanyuBtn(){
        let bianBtn = (bian, Hanyu(hanyu: "bian", koreanPronounce: "삐엔", desc: "", videoUrl: "BwgdHF83zYE"))
        let binBtn = (bin, Hanyu(hanyu: "bin", koreanPronounce: "삔", desc: "", videoUrl: "mBv1tlqBd-g"))
        let bingBtn = (bing, Hanyu(hanyu: "bing", koreanPronounce: "삥", desc: "", videoUrl: "ozrmqtOSEmU"))
        let pianBtn = (pian, Hanyu(hanyu: "pian", koreanPronounce: "피엔", desc: "", videoUrl: "5fSdyhnRZbU"))
        let pinBtn = (pin, Hanyu(hanyu: "pin", koreanPronounce: "핀", desc: "", videoUrl: "DUDG-XIgAB8"))
        let pingBtn = (ping, Hanyu(hanyu: "ping", koreanPronounce: "핑", desc: "", videoUrl: "05X4Nz34spE"))
        let mianBtn = (mian, Hanyu(hanyu: "mian", koreanPronounce: "미엔", desc: "", videoUrl: "YD7T-AC9rlg"))
        let minBtn = (min, Hanyu(hanyu: "min", koreanPronounce: "민", desc: "", videoUrl: "KBfVXnRP_Bw"))
        let mingBtn = (ming, Hanyu(hanyu: "ming", koreanPronounce: "밍", desc: "", videoUrl: "X7xPWtJXnXw"))
        let dianBtn = (dian, Hanyu(hanyu: "dian", koreanPronounce: "띠엔", desc: "", videoUrl: "HfVxPtLbsXo"))
        let dingBtn = (ding, Hanyu(hanyu: "ding", koreanPronounce: "띵", desc: "", videoUrl: "ZzFhAT5ITqQ"))
        let tianBtn = (tian, Hanyu(hanyu: "tian", koreanPronounce: "티엠", desc: "", videoUrl: "IU1ScwyBdjY"))
        let tingBtn = (ting, Hanyu(hanyu: "ting", koreanPronounce: "팅", desc: "", videoUrl: "M_J522f_JGg"))
        let nianBtn = (nian, Hanyu(hanyu: "nian", koreanPronounce: "니엔", desc: "", videoUrl: "LFPQEDZDWtI"))
        let ninBtn = (nin, Hanyu(hanyu: "nin", koreanPronounce: "닌", desc: "", videoUrl: "UuEZaoDcJ_o"))
        let niangBtn = (niang, Hanyu(hanyu: "niang", koreanPronounce: "니앙", desc: "", videoUrl: "im_mbY65I5w"))
        let ningBtn = (ning, Hanyu(hanyu: "ning", koreanPronounce: "닝", desc: "", videoUrl: "Os40AF_joYY"))
        let lianBtn = (lian, Hanyu(hanyu: "lian", koreanPronounce: "리엔", desc: "", videoUrl: "YOVUbvDkZhU"))
        let linBtn = (lin, Hanyu(hanyu: "lin", koreanPronounce: "린", desc: "", videoUrl: "NA5nisx1msk"))
        let liangBtn = (liang, Hanyu(hanyu: "liang", koreanPronounce: "리앙", desc: "", videoUrl: "ZG9-Zyi0W4A"))
        let lingBtn = (ling, Hanyu(hanyu: "ling", koreanPronounce: "링", desc: "", videoUrl: "Cbi8pCb6u_w"))
        let jianBtn = (jian, Hanyu(hanyu: "jian", koreanPronounce: "지엔", desc: "", videoUrl: "8PcTUpW1VdE"))
        let jinBtn = (jin, Hanyu(hanyu: "jin", koreanPronounce: "진", desc: "", videoUrl: defualtURL))
        let jiangBtn = (jiang, Hanyu(hanyu: "jiang", koreanPronounce: "지앙", desc: "", videoUrl: defualtURL))
        let jingBtn = (jing, Hanyu(hanyu: "jing", koreanPronounce: "징", desc: "", videoUrl: "eHrrMaHxstI"))
        let jiongBtn = (jiong, Hanyu(hanyu: "jiong", koreanPronounce: "지옹", desc: "", videoUrl: "_3ozgvTPyiI"))
        let qianBtn = (qian, Hanyu(hanyu: "qian", koreanPronounce: "치엔", desc: "", videoUrl: "PYdllmXPFwQ"))
        let qinBtn = (qin, Hanyu(hanyu: "qin", koreanPronounce: "친", desc: "", videoUrl: "qceHloFmIWI"))
        let qiangBtn = (qiang, Hanyu(hanyu: "qiang", koreanPronounce: "치앙", desc: "", videoUrl: "oUQDsExxIlA"))
        let qingBtn = (qing, Hanyu(hanyu: "qing", koreanPronounce: "칭", desc: "", videoUrl: "oiSJQncqG0I"))
        let qiongBtn = (qiong, Hanyu(hanyu: "qiong", koreanPronounce: "치옹", desc: "", videoUrl: "Cq_u7EeEd3g"))
        let xianBtn = (xian, Hanyu(hanyu: "xian", koreanPronounce: "시엔", desc: "", videoUrl: "tKfFjmSUVxo"))
        let xinBtn = (xin, Hanyu(hanyu: "xin", koreanPronounce: "신", desc: "", videoUrl: "6rjIVMNJZIw"))
        let xiangBtn = (xiang, Hanyu(hanyu: "xiang", koreanPronounce: "시앙", desc: "", videoUrl: "a3pHog0RnAQ"))
        let xingBtn = (xing, Hanyu(hanyu: "xing", koreanPronounce: "싱", desc: "", videoUrl: "qxHjAaT87Eg"))
        let xiongBtn = (xiong, Hanyu(hanyu: "xiong", koreanPronounce: "시옹", desc: "", videoUrl: "GLQnsjbKFXU"))
        
        let buttons = [bianBtn, binBtn, bingBtn, pianBtn, pinBtn, pingBtn, mianBtn, minBtn, mingBtn, dianBtn, dingBtn, tianBtn, tingBtn, nianBtn, ninBtn, niangBtn, ningBtn, lianBtn, linBtn, liangBtn, lingBtn, jianBtn, jinBtn, jiangBtn, jingBtn, jiongBtn, qianBtn, qinBtn, qiangBtn, qingBtn, qiongBtn, xianBtn, xinBtn, xiangBtn, xingBtn, xiongBtn] as! [buttonHanyu]
        setBtnProperty(inputs: buttons)
        
    }

 
}

