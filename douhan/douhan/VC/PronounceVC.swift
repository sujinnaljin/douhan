//
//  PronounceVC.swift
//  douhan
//
//  Created by 강수진 on 07/02/2019.
//  Copyright © 2019 강수진. All rights reserved.
//

import UIKit

class PronounceVC: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var titles = ["1과 - 성조", "2과 - 운모1", "3과 - 운모2", "4과 - 성모", "5과 - 병음 학습과 성조 변화"]
    override func viewDidLoad() {
        super.viewDidLoad()
        setBackBtn()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.tableFooterView = UIView(frame : .zero)
    }
}


extension PronounceVC : UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PronounceTVCell", for: indexPath)
        cell.textLabel?.text = titles[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let mainStroyboard = UIStoryboard(name: "Main", bundle: nil)
        
        switch indexPath.row {
        case 0:
            if let toneVC = mainStroyboard.instantiateViewController(withIdentifier:ToneVC.reuseIdentifier) as? ToneVC {
                self.navigationController?.pushViewController(toneVC, animated: true)
            }
        case 1:
            if let yunmuFisrtVC = mainStroyboard.instantiateViewController(withIdentifier:YunmuFisrtVC.reuseIdentifier) as? YunmuFisrtVC {
                self.navigationController?.pushViewController(yunmuFisrtVC, animated: true)
            }
        case 2:
            if let yunmuSecondVC = mainStroyboard.instantiateViewController(withIdentifier:YunmuSecondVC.reuseIdentifier) as? YunmuSecondVC {
                self.navigationController?.pushViewController(yunmuSecondVC, animated: true)
            }
        case 3:
            if let shengmuVC = mainStroyboard.instantiateViewController(withIdentifier:ShengmuVC.reuseIdentifier) as? ShengmuVC {
                self.navigationController?.pushViewController(shengmuVC, animated: true)
            }
        case 4 :
            if let wholePinyinVC = mainStroyboard.instantiateViewController(withIdentifier:WholePinyinVC.reuseIdentifier) as? WholePinyinVC {
                self.navigationController?.pushViewController(wholePinyinVC, animated: true)
            }
            
        default:
            break
        }
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

