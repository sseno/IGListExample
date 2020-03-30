//
//  HomeSectionController.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 29/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit
import IGListKit

enum HomeSection: String {
    case preventCovid19
}

class HomeMenuPreventCovid: ListDiffable {

    let id: String
    let data: PreventsCovid
    
    init(id: String, data: PreventsCovid) {
        self.id = id
        self.data = data
    }
    
    func diffIdentifier() -> NSObjectProtocol {
        return id as NSObjectProtocol
    }
    
    func isEqual(toDiffableObject object: ListDiffable?) -> Bool {
        return true
    }
}

class HomeSectionController: ListSectionController, ListAdapterDataSource {
    
    private var object: HomeSection?
    
    lazy var adapter: ListAdapter = {
        let adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: self.viewController)
        adapter.dataSource = self
        return adapter
    }()
    
    var items : [Any] = []
    var vm: HomeViewModel?
    var homeMenu: HomeMenuPreventCovid?
    
    init(vm: HomeViewModel) {
        self.vm = vm
        self.homeMenu = HomeMenuPreventCovid.init(id: "1", data: vm.dataPreventCovid)
        self.items.append(self.homeMenu as Any)
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        switch object {
        case .preventCovid19:
            let width = collectionContext!.containerSize.width
            return CGSize(width: width, height: width + 50)
        default:
            return CGSize(width: collectionContext!.containerSize.width, height: 60)
        }
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        switch object {
        case .preventCovid19:
            guard let cell = collectionContext?.dequeueReusableCell(withNibName: "HomePreventCovidCell",
                                                                    bundle: nil,
                                                                    for: self,
                                                                    at: index) as? HomePreventCovidCell else {
                                                                        fatalError()
            }
            adapter.collectionView = cell.collectionView
            cell.titleLabel.text = "Prevent COVID - 19"
            return cell
        default:
            guard let cell = collectionContext?.dequeueReusableCell(withNibName: "HomePreventCovidCell",
                                                                    bundle: nil,
                                                                    for: self,
                                                                    at: index) as? HomePreventCovidCell else {
                                                                        fatalError()
            }
            return cell
        }
    }
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        switch object {
        case .preventCovid19:
            return self.items as! [ListDiffable]
        default:
            return []
        }
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        switch self.object {
        case .preventCovid19:
            let vc = EmbedPreventCovid19SC()
            vc.homeMenu = self.homeMenu
            return vc
        default:
            let vc = EmbedPreventCovid19SC()
            vc.homeMenu = self.homeMenu
            return vc
        }
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
    override func didUpdate(to object: Any) {
        self.object = HomeSection(rawValue: object as! String)
    }
}
