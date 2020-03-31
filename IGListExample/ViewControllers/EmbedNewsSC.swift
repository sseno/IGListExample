//
//  EmbedNewsSC.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 31/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import UIKit
import IGListKit

final class EmbedNewsSC: ListSectionController {
    
    private var number: Int?
    var data: NewsList?
    
    override init() {
        super.init()
        self.inset = .init(top: 0, left: 0, bottom: 0, right: 16)
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        let width = (collectionContext!.containerSize.width / 1.5) - 6 // 270
        return CGSize(width: width, height: width - 140)
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        guard let cell = collectionContext?.dequeueReusableCell(withNibName: "HomeNewsItemCell",
                                                                bundle: nil,
                                                                for: self,
                                                                at: index) as? HomeNewsItemCell else {
                                                                    fatalError()
        }
        cell.imageView.image = data?[number ?? 0].image
        cell.titleLabel.text = data?[number ?? 0].title
        return cell
    }
    
    override func didUpdate(to object: Any) {
        number = object as? Int
    }
}
