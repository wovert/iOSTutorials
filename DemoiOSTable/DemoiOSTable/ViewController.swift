//
//  ViewController.swift
//  DemoiOSTable
//
//  Created by wovert on 18/12/24.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

// UITableViewDelegate 代理(控制tabview)，UITableViewDataSource 数据源()
class ViewController: UIViewController ,UITableViewDelegate ,UITableViewDataSource {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        //
        tableView.delegate = self;
        tableView.dataSource = self;
        tableView.registerNib(UINib.init(nibName: "BangTableViewCell", bundle: nil), forCellReuseIdentifier: "BangTableViewCell");
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // 每组的行数
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 100;
    }
    
    // line-height
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 117;
    }
    
    // cell的内容
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let bangCell = tableView.dequeueReusableCellWithIdentifier("BangTableViewCell");
        
//        let cell = UITableViewCell.init()
//        cell.textLabel?.text = "122"
//        return cell
        
         return bangCell!;
    }
    

}
