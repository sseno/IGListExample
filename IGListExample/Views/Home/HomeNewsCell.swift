//
//  HomeNewsCell.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 31/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class HomeNewsCell: UICollectionViewCell {

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
        collectionView.contentInset = .init(top: 10, left: 20, bottom: 20, right: 4)
    }

}
