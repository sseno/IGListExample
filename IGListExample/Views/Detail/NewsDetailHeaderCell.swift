//
//  NewsDetailHeaderCell.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 02/04/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class NewsDetailHeaderCell: UITableViewCell {

    @IBOutlet weak var headerImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        headerImageView.layer.cornerRadius = 8
        headerImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
