//
//  MyViewController.swift
//  DemoClickEvent
//
//  Created by wovert on 18/12/21.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class MyViewController: UIViewController {
    /*
     init(coder aDecoder: NScoder!) {
        super.init(coder: aDecoder)
     }
     */

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        let label = UILabel(frame: CGRect(x: 50, y:50, width:100, height:100))
        label.text = "hello wovert.com"
        view.addSubview(label)
        
//        let label = UILabel.init(frame: CGRect.init(x: 10, y: 10, width: self.view.frame.size.width, height: 30));
//        label.text = "label2";
//        self.view.addSubview(label);
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
