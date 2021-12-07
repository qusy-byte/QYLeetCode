//
//  ViewController.swift
//  QYLeetCode
//
//  Created by qusy on 2021/12/7.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: QYQuestionCell = tableView.dequeueReusableCell(withIdentifier: "QYQuestionCell", for: indexPath) as! QYQuestionCell
        cell.questionLabel.text = "题目: " + String(indexPath.row)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 50
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc: QYDetailController = QYDetailController.init()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}

