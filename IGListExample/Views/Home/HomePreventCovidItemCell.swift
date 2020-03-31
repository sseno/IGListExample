//
//  HomePreventCovidItemCell.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 29/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class HomePreventCovidItemCell: UICollectionViewCell {

    @IBOutlet weak var icon: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.layer.cornerRadius = 8
    }

}
