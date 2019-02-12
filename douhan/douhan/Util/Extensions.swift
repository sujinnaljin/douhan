//
//  Extensions.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

/*---------------------NSObject---------------------------*/
extension NSObject {
    static var reuseIdentifier:String {
        return String(describing:self)
    }
}

extension UIView {
    func makeRounded(cornerRadius : CGFloat?){
        if let cornerRadius_ = cornerRadius {
            self.layer.cornerRadius = cornerRadius_
        }  else {
            self.layer.cornerRadius = self.layer.frame.height/2
        }
        self.layer.masksToBounds = true
    }
}

extension UIViewController {
    
    
    typealias buttonHanyu = (HanyuBtn, Hanyu)
    func setBtnProperty(inputs : [buttonHanyu]){
        inputs.forEach { (input) in
            input.0.delegate = self as? SelectHanyuDelegate
            input.0.hanyu = input.1
            input.0.setTitle(input.1.hanyu, for: .normal)
            input.0.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 0)
            input.0.titleLabel?.font = UIFont(name: NanumSquareOTF.NanumSquareOTFB.rawValue, size: 20)!
            input.0.tintColor = #colorLiteral(red: 0.9067433476, green: 0.2141962349, blue: 0.2794422805, alpha: 1)
            
        }
    }
    
    
    //백버튼
    func setBackBtn(color : UIColor? = .black){
        let backBTN = UIBarButtonItem(image: UIImage(named: "back_white_btn"),
                                      style: .plain,
                                      target: self,
                                      action: #selector(self.pop))
        navigationItem.leftBarButtonItem = backBTN
        navigationItem.leftBarButtonItem?.tintColor = color
        navigationController?.interactivePopGestureRecognizer?.delegate = self as? UIGestureRecognizerDelegate
    }
    
    @objc func pop(){
        self.navigationController?.popViewController(animated: true)
    }
}

extension UILabel {
    
    func setLineSpacing(lineSpacing: CGFloat = 0.0, lineHeightMultiple: CGFloat = 0.0) {
        
        guard let labelText = self.text else { return }
        
        let paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = lineSpacing
        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        
        let attributedString:NSMutableAttributedString
        if let labelattributedText = self.attributedText {
            attributedString = NSMutableAttributedString(attributedString: labelattributedText)
        } else {
            attributedString = NSMutableAttributedString(string: labelText)
        }
        // (Swift 4.1 and 4.0) Line spacing attribute
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value:paragraphStyle, range:NSMakeRange(0, attributedString.length))
        
        self.attributedText = attributedString
    }
}
