//
//  PreventCovid.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 30/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import Foundation
import UIKit

typealias PreventsCovid = [PreventCovid]

struct PreventCovid {
    let icon: UIColor
    let title: String
    let desc: String
    
    init(icon: UIColor, title: String, desc: String) {
        self.icon = icon
        self.title = title
        self.desc = desc
    }
}

typealias Requirements = [Requirement]

struct Requirement {
    let icon: UIColor
    let title: String
    
    init(icon: UIColor, title: String) {
        self.icon = icon
        self.title = title
    }
}

typealias NewsList = [News]

struct News {
    let image: UIColor
    let title: String
    
    init(image: UIColor, title: String) {
        self.image = image
        self.title = title
    }
}
