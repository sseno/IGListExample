//
//  HomeViewModel.swift
//  IGListExample
//
//  Created by Rohmat Suseno on 30/03/20.
//  Copyright © 2020 Rohmts. All rights reserved.
//

import Foundation
import UIKit

class HomeViewModel {
    
    var data: [Any] = [
        HomeSection.preventCovid19.rawValue,
        HomeSection.requirements.rawValue,
        HomeSection.news.rawValue,
    ]
    let dataPreventCovid: PreventsCovid = [
        .init(icon: .red, title: "Symptoms", desc: "Signs identity the risk of infection"),
        .init(icon: .yellow, title: "Prevention", desc: "Help you avoid the risk of infection"),
        .init(icon: .green, title: "Reports", desc: "Date related to the disease"),
        .init(icon: .blue, title: "Countries", desc: "Infected countries by COVID-19"),
    ]
    let dataRequirements: Requirements = [
        .init(icon: .purple, title: "Mask"),
        .init(icon: .systemPink, title: "Gloves"),
        .init(icon: .gray, title: "Alcohol"),
        .init(icon: .brown, title: "Soap"),
        .init(icon: .darkGray, title: "Hygiene"),
        .init(icon: .cyan, title: "Cleaning"),
        .init(icon: .green, title: "Isolate"),
    ]
    let dataNews: NewsList = [
        .init(image: UIImage(named: R.image.img_covid1.name)!, title: "Your COVID-19 Questions, Answered"),
        .init(image: UIImage(named: R.image.img_covid2.name)!, title: "Testing is Just the Beginning in the Battle Against Covid-19"),
        .init(image: UIImage(named: R.image.img_covid3.name)!, title: "California COVID-19 Hospitalizations Double in Four Days: Governor"),
        .init(image: UIImage(named: R.image.img_covid4.name)!, title: "California COVID-19 Hospitalizations Double in Four Days: Governor"),
        .init(image: UIImage(named: R.image.img_covid5.name)!, title: "White House, Congress weigh next stimulus with virus spreading")
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
