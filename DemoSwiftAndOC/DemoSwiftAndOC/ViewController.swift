//
//  ViewController.swift
//  DemoSwiftAndOC
//
//  Created by wovert on 18/12/16.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        let h = Hello()
        h.sayHello()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

