//
//  ViewController.swift
//  DemoClickEvent
//
//  Created by wovert on 18/12/21.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func btnClicked(sender:AnyObject) {
        print("Button clicked")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

