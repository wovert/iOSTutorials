//
//  BangTableViewCell.swift
//  DemoiOSTable
//
//  Created by wovert on 18/12/24.
//  Copyright © 2018年 dev. All rights reserved.
//

import UIKit

class BangTableViewCell: UITableViewCell {

    @IBOutlet weak var cover: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
