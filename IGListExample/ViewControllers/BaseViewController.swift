//
//  BaseViewController.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 02/04/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit

enum BarButtonItemType {
    
    case hamburgerMenu
    case backButton
    case closeButton
    case titleButtonModal
    case iconButton
    case shareButton
}

class BaseViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
    }
    
    func createHamburgerBarButtonItem() -> UIBarButtonItem {
        let hamburgerButtonImage = R.image.ic_hamburger_white()
        let hamburgerBarButtonItem = UIBarButtonItem.menuButton(self, action: #selector(self.didClickHamburgerButton), image: hamburgerButtonImage, width: 30)
        return hamburgerBarButtonItem
    }
    
    func createBackBarButtonItem() -> UIBarButtonItem {
        let backButtonImage = R.image.ic_back_arrow()
        let backBarButtonItem = UIBarButtonItem.menuButton(self, action: #selector(self.didClickBackButton), image: backButtonImage, width: 30)
        return backBarButtonItem
    }
    
    func createIconBarButtonItem() -> UIBarButtonItem {
           let iconButtonImage = R.image.ic_user_placeholder()
           let iconBarButtonItem = UIBarButtonItem.menuButton(self, action: #selector(self.didClickShareButton), image: iconButtonImage, width: 30)
           return iconBarButtonItem
       }
    
    func createShareBarButtonItem() -> UIBarButtonItem {
        let shareButtonImage = R.image.ic_more_share()
        let shareButtonItem = UIBarButtonItem.menuButton(self, action: #selector(self.didClickShareButton), image: shareButtonImage, width: 30)
        return shareButtonItem
    }
    
    func setupLeftBackBarButtonItems(barButtonType type: BarButtonItemType) {
        var barButtonItem: UIBarButtonItem!
        switch type {
        case .hamburgerMenu:
            barButtonItem = createHamburgerBarButtonItem()
        default:
            barButtonItem = createBackBarButtonItem()
        }
        
//        if (type == .backButton) {
//            self.initSwipeToBack()
//        }
        
        var barButtonItems = [UIBarButtonItem]()
        barButtonItems.append(barButtonItem)
        self.navigationItem.leftBarButtonItems = barButtonItems
    }
    
    func setupRightBackBarButtonItems(barButtonType type: BarButtonItemType) {
        var barButtonItem: UIBarButtonItem!
        switch type {
        case .iconButton:
            barButtonItem = createIconBarButtonItem()
        case .shareButton:
            barButtonItem = createShareBarButtonItem()
        default:
            barButtonItem = createShareBarButtonItem()
        }
        
        var barButtonItems = [UIBarButtonItem]()
        barButtonItems.append(barButtonItem)
        self.navigationItem.rightBarButtonItems = barButtonItems
    }
    
    @objc func didClickHamburgerButton() {
        debugPrint("clicked")
    }
    
    @objc func didClickBackButton() {
        self.navigationController?.popViewController(animated: true)
    }
    
    @objc func didClickShareButton() {
        debugPrint("share")
    }
    
    func initSwipeToBack() {
        self.navigationController?.interactivePopGestureRecognizer?.delegate = self
        //self.navigationController?.interactivePopGestureRecognizer?.isEnabled = true
    }
}

// MARK: - UINavigationControllerDelegate
extension BaseViewController: UIGestureRecognizerDelegate {

    // Prevent screen freeze when on the root vc
    public func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
        return self.navigationController?.viewControllers.count ?? 0 > 1
    }
}
