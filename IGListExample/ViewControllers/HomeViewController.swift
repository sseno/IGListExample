//
//  HomeViewController.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 28/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit
import IGListKit

class HomeViewController: UIViewController, ListAdapterDataSource {

    @IBOutlet weak var innerView: UIView!
    lazy var adapter: ListAdapter = {
        return ListAdapter(updater: ListAdapterUpdater(), viewController: self)
    }()
    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    var vm = HomeViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.navigationBar.barStyle = .black
    }
    
    private func setupView() {
        setupNavBar()
        collectionView.backgroundColor = .yellow
        innerView.addSubview(collectionView)
        adapter.collectionView = self.collectionView
        adapter.dataSource = self
    }
    
    private func setupNavBar() {
        setNavTitle(withTitle: "")
        self.navigationController?.navigationBar.barTintColor = UIColor.init(named: "BluePrimary")
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
