//
//  ViewController.swift
//  DemoiOSWebview
//
//  Created by wovert on 18/12/16.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

import WebKit //引入该包

class ViewController: UIViewController {
    
    @IBOutlet weak var iv: UIImageView!
    @IBOutlet var wv:UIWebView!
    
    //浏览器控件
    //@IBOutlet var wv: WKWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        @IBOutlet weak var iv: UIImageView!
        @IBOutlet weak var iv: UIImageView!
    
        // webview 载入 http地址
        wv.loadRequest(NSURLRequest(URL: NSURL(string: "http://i.gqsj.cc")!))
        //wv.loadRequest(NSURLRequest(URL: NSURL(string: "http://i.gqsj.cc")!))
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

