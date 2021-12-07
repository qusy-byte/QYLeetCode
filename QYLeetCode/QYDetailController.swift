//
//  QYDetailController.swift
//  QYLeetCode
//
//  Created by qusy on 2021/12/7.
//

import UIKit
import WebKit

class QYDetailController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white

        // Do any additional setup after loading the view.
        
        let webview = WKWebView.init(frame: self.view.bounds)
        self.view.addSubview(webview)
        
        guard let url = URL.init(string: "https://leetcode-cn.com/problems/two-sum/") else { return }
        let request = URLRequest.init(url: url)
        webview.load(request)
    }

}
