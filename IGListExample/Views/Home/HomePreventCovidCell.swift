//
//  HomePreventCovidCell.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 29/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class HomePreventCovidCell: UICollectionViewCell {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var collectionView: UICollectionView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
    }
    
    private func setupView() {
        collectionView.isScrollEnabled = true
        collectionView.showsVerticalScrollIndicator = false
        let collectionViewLayout = collectionView.collectionViewLayout as? UICollectionViewFlowLayout
        collectionViewLayout?.scrollDirection = .vertical
        collectionView.contentInset = .init(top: 10, left: 20, bottom: 15, right: 20)

        collectionViewLayout?.invalidateLayout()
    }
}
