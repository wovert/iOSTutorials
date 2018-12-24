//
//  ViewController.swift
//  DemoBrowser
//
//  Created by wovert on 18/12/22.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var webView = UIWebView();

    @IBOutlet weak var urlInput: UITextField!
    @IBOutlet weak var btnGo: UIButton!
    @IBOutlet weak var wv: UIWebView!
    
    @IBAction func btnGoClicked(sender:AnyObject) {
        print("跳转按钮触发")
        wv.loadRequest(NSURLRequest(URL: NSURL(string: urlInput.text!)!))
        
        urlInput.resignFirstResponder()

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}

