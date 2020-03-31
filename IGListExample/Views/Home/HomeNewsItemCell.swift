//
//  HomeNewsItemCell.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 31/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class HomeNewsItemCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    //@IBOutlet weak var gradientView: UIView!
    @IBOutlet weak var titleLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupView()
        //setupGradientLayer()
    }
    
    private func setupView() {
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
    }
    
//    fileprivate func setupGradientLayer() {
//        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
//        gradientLayer.locations = [0.2,1]
//        layer.cornerRadius = 8
//        clipsToBounds = true
//        gradientView.layer.addSublayer(gradientLayer)
//    }
//
//    override func layoutSubviews() {
//        super.layoutSubviews()
//        gradientLayer.frame = bounds
//    }
}

@IBDesignable class GradientView: UIView {
    
    let gradientLayer = CAGradientLayer()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.black.cgColor]
        gradientLayer.locations = [0.2,1]
        layer.cornerRadius = 8
        clipsToBounds = true
        layer.addSublayer(gradientLayer)
        
        gradientLayer.frame = bounds
    }
}
