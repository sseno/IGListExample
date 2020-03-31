//
//  EmbedRequirementsSC.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 30/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit
import IGListKit

final class EmbedRequirementsSC: ListSectionController {
    
    private var number: Int?
    var data: Requirements?
    
    override init() {
        super.init()
        self.inset = .init(top: 1, left: 0, bottom: 0, right: -12)
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let width = (collectionContext!.containerSize.width / 4)
        return CGSize(width: width, height: width + 5)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNibName: "HomeRequirementItemCell",
                                                                bundle: nil,
                                                                for: self,
                                                                at: index) as? HomeRequirementItemCell else {
                                                                    fatalError()
        }
        cell.icon.backgroundColor = data?[number ?? 0].icon
        cell.titleLabel.text = data?[number ?? 0].title
        return cell
    }
    
    override func didUpdate(to object: Any) {
        number = object as? Int
    }
}
