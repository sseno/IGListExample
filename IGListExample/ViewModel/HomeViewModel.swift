//
//  HomeViewModel.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 30/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import Foundation

class HomeViewModel {
    
    var data: [Any] = [
        HomeSection.preventCovid19.rawValue,
    ]
    let dataPreventCovid: PreventsCovid = [
        .init(icon: .red, title: "Symptoms", desc: "Signs identity the risk of infection"),
        .init(icon: .green, title: "Prevention", desc: "Help you avoid the risk of infection"),
        .init(icon: .blue, title: "Reports", desc: "Date related to the disease"),
        .init(icon: .yellow, title: "Countries", desc: "Infected countries by COVID-19"),
    ]
    let dataRequirements: Requirements = [
        .init(icon: .purple, title: "Mask"),
        .init(icon: .systemPink, title: "Gloves"),
        .init(icon: .gray, title: "Alcohol"),
        .init(icon: .brown, title: "Soap"),
    ]
    let dataNews: NewsList = [
        .init(image: .purple, title: "Lorem ipsum"),
        .init(image: .systemPink, title: "Lorem ipsum 2"),
        .init(image: .gray, title: "Lorem ipsum 3"),
        .init(image: .brown, title: "Lorem ipsum 4"),
    ]
    
    func dataPreventCovidCount() -> Int {
        return dataPreventCovid.count
    }
    
    func dataRequirementsCount() -> Int {
        return dataRequirements.count
    }
    
    func dataNewsCount() -> Int {
        return dataNews.count
    }
}
