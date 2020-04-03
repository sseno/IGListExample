//
//  HomeViewController.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 28/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit
import IGListKit

class HomeViewController: BaseViewController, ListAdapterDataSource {

    @IBOutlet weak var innerView: UIView!
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    var vm = HomeViewModel()
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupNavBar()
    }
    
    private func setupView() {
        setNavTitle(withTitle: "")
        collectionView.backgroundColor = .white
        innerView.addSubview(collectionView)
        adapter.collectionView = self.collectionView
        adapter.dataSource = self
        adapter.scrollViewDelegate = self
    }
    
    private func setupNavBar() {
        self.navigationController?.navigationBar.barStyle = .black
        self.navigationController?.navigationBar.titleTextAttributes = [NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: 20), NSAttributedString.Key.foregroundColor: UIColor.white]
        self.navigationController?.navigationBar.barTintColor = UIColor.init(named: "BluePrimary")
        setupLeftBackBarButtonItems(barButtonType: .hamburgerMenu)
        setupRightBackBarButtonItems(barButtonType: .iconButton)
        // Hide underline
        self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        self.navigationController?.navigationBar.shadowImage = UIImage()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.frame = innerView.bounds
    }
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        return vm.data as! [ListDiffable]
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return HomeSectionController(vm: self.vm)
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
}

// MARK: - UIScrollViewDelegate
extension HomeViewController: UIScrollViewDelegate {
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        if scrollView == collectionView {
            let navbarChangePoint: CGFloat = 37.0
            let offsetY = scrollView.contentOffset.y
            if (offsetY > navbarChangePoint) {
                setNavTitle(withTitle: NSLocalizedString("Prevent COVID-19", comment: ""))
            } else {
                setNavTitle(withTitle: "")
            }
        }
    }
}
