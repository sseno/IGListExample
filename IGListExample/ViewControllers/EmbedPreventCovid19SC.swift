//
//  EmbedPreventCovid19SC.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 29/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit
import IGListKit

final class EmbedPreventCovid19SC: ListSectionController {
    
    private var preventCovid: PreventCovid?
    
    var homeMenu: HomeMenuPreventCovid?
    
    override init() {
        super.init()
        //self.inset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 15)
        minimumLineSpacing = 20
        minimumInteritemSpacing = 20
    }

    override func numberOfItems() -> Int {
        return homeMenu?.data.count ?? 0
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let width = ((collectionContext!.containerSize.width - 50) / 2) - 8
        return CGSize(width: width, height: width)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNibName: "PreventCovid19Cell",
                                                                bundle: nil,
                                                                for: self,
                                                                at: index) as? PreventCovid19Cell else {
                                                                    fatalError()
        }
        cell.icon.backgroundColor = homeMenu?.data[index].icon
        cell.titleLabel.text = homeMenu?.data[index].title
        cell.descLabel.text = homeMenu?.data[index].desc
        return cell
    }
    
    override func didUpdate(to object: Any) {
        self.preventCovid = object as? PreventCovid
    }
}
