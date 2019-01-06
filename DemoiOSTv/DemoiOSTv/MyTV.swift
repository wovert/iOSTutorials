//
//  MyTV.swift
//  DemoiOSTv
//
//  Created by wovert on 18/12/25.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class MyTV: UITableView, UITableViewDataSource {

    let TAG_CELL_LABEL = 1
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.dataSource = self
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        let cell:AnyObject! = tableView.dequeueReusableCellWithIdentifier("cell")
        var label = cell?.viewWithTag(TAG_CELL_LABEL) as! UILabel
        label.text = "hello wovert.com"
        return cell as! UITableViewCell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }

}
