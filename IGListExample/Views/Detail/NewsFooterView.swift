//
//  NewsFooterView.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 04/04/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class NewsFooterView: UIView {
    
    @IBOutlet weak var heartView: UIView!
    @IBOutlet weak var bookmarkView: UIView!
    @IBOutlet weak var commentBarView: UIView!
    @IBOutlet weak var widhtHeartButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightHeartButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var widthBookmarkButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightBookmarkButtonConstraint: NSLayoutConstraint!
    @IBOutlet weak var heightCommentBarViewConstraint: NSLayoutConstraint!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupViews()
    }
    
    private func setupViews() {
        let height = CGFloat.init(50) //(UIScreen.main.bounds.height / 10) - 40
        
        self.widhtHeartButtonConstraint.constant = height
        self.heightHeartButtonConstraint.constant = height
        self.widthBookmarkButtonConstraint.constant = height
        self.heightBookmarkButtonConstraint.constant = height
        self.heightCommentBarViewConstraint.constant = height
        self.layoutIfNeeded()
        
        heartView.layer.cornerRadius = height / 2
        bookmarkView.layer.cornerRadius = height / 2
        commentBarView.layer.cornerRadius = 5
    }
}
