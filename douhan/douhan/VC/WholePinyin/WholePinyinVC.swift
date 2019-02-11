//
//  WholePinyinVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class WholePinyinVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    var titles = ["1. 성모와 단운모가 만났을 때", "2. 성모와 복운모가 만났을 때", "3. 성모와 비운모가 만났을 때", "4. 성모와  i 결합운모가 만났을때", "5. 성모와 i결합 비운모가 만났을 때", "6. 성모와 u결합 운모가 만났을때", "7. 성모와 u결합 비운모가 만났을때", "8. 성모와 ü결합운모가 만났을 때"]
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame : .zero)
        setBackBtn()
    }
    
}

extension WholePinyinVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WholePinyinTVCell", for: indexPath)
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        var destVC = ""
        switch indexPath.row {
        case 0:
            destVC = WholePinyinFirstDetailVC.reuseIdentifier
        case 1:
            destVC = WholePinyinSecondDetailVC.reuseIdentifier
        case 2:
            destVC = WholePinyinThirdDetailVC.reuseIdentifier
        case 3:
            destVC = WholePinyinForthDetailVC.reuseIdentifier
        case 4:
            destVC = WholePinyinFifthDetailVC.reuseIdentifier
        case 5:
            destVC = WholePinyinSixthDetailVC.reuseIdentifier
        case 6:
            destVC = WholePinyinSeventhDetailVC.reuseIdentifier
        case 7:
            destVC = WholePinyinEighthDetailVC.reuseIdentifier
        default:
            break
        }
        goToDetailVC(destVC)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    
    func goToDetailVC(_ destVC : String) {
        let mainStroyboard = UIStoryboard(name: "Main", bundle: nil)
        let destVC_ = mainStroyboard.instantiateViewController(withIdentifier:destVC)
        self.navigationController?.pushViewController(destVC_, animated: true)
    }
}
