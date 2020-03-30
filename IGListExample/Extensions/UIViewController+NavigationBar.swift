//
//  UIViewController+NavigationBar.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 28/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func setNavTitle(withTitle: String) {
        self.navigationItem.title = withTitle
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.black]
        self.navigationController?.navigationBar.tintColor = .black
        self.navigationController?.navigationBar.isTranslucent = false
        self.navigationItem.backBarButtonItem = UIBarButtonItem(title:"", style:.plain, target:nil, action:nil)
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffset(horizontal: -1000.0, vertical: 0.0), for: .default)
        
    }
}
