//
//  BaseViewController.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 02/04/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, UIGestureRecognizerDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
    @objc func didClickBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    func initSwipeToBack() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
}
