//
//  HomeRequirementItemCell.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 31/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class HomeRequirementItemCell: UICollectionViewCell {

    @IBOutlet weak var icon: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }

    private func setupView() {
        icon.layer.cornerRadius = 60 / 2
    }
}
