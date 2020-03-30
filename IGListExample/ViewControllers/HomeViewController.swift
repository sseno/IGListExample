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
    
    private func setupView() {
        setNavTitle(withTitle: "")
        collectionView.backgroundColor = .yellow
        innerView.addSubview(collectionView)
        adapter.collectionView = self.collectionView
        adapter.dataSource = self
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
