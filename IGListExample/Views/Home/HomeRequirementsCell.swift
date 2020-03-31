//
//  HomeRequirementsCell.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 30/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class HomeRequirementsCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView() {
        collectionView.isScrollEnabled = true
        collectionView.showsHorizontalScrollIndicator = false
        let collectionViewLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        collectionViewLayout?.scrollDirection = .horizontal
        collectionView.contentInset = .init(top: 10, left: 0, bottom: 0, right: 12)
    }

}
