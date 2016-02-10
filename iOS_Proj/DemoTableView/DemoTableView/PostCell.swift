//
//  PostCell.swift
//  DemoTableView
//
//  Created by Baurine Huang on 2/10/16.
//  Copyright © 2016 Baurine Huang. All rights reserved.
//

import UIKit

struct Post {
    let photo:String
    let avatar:String
    let nickname:String
    let username:String
    let createtime:String
    let content:String
}

class PostCell: UITableViewCell {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var avatar: UIImageView!
    @IBOutlet weak var nickname: UILabel!
    @IBOutlet weak var username: UILabel!
    @IBOutlet weak var createtime: UILabel!
    @IBOutlet weak var content: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
