//
//  PostCell.swift
//  MyHood
//
//  Created by psskhal on 1/18/16.
//  Copyright © 2016 psskhal. All rights reserved.
//

import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var postImg: UIImageView!
    @IBOutlet weak var titlelbl: UILabel!
    @IBOutlet weak var descLbl: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        
        postImg.layer.cornerRadius = 15.0 //postImg.frame.size.width / 2
        postImg.clipsToBounds = true
    }
    
    func configureCell(post: Post) {
        titlelbl.text = post.title
        descLbl.text = post.postDesc
        postImg.image = DataService.instance.imageFroPath(post.imagePath)
    }
    
}
