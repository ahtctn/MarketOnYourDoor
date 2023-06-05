//
//  CampaignModel.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import Foundation

class CampaignModel: Identifiable {
    //var id = UUID()
    var code: Int
    var name: String
    var imageUrl: String
    
    required init(code: Int, name: String, imageUrl: String) {
        self.code = code
        self.name = name
        self.imageUrl = imageUrl
    }
}

struct CampaignDataModelList {
    static let mCampaignList = [
        CampaignModel(code: 1, name: "Nestle", imageUrl: "https://picsum.photos/350/200"),
        CampaignModel(code: 2, name: "Mondelez", imageUrl: "https://picsum.photos/350/200"),
        CampaignModel(code: 3, name: "Uludağ İçecek", imageUrl: "https://picsum.photos/350/200"),
        CampaignModel(code: 4, name: "Imperial Tabocco", imageUrl: "https://picsum.photos/350/200"),
        CampaignModel(code: 5, name: "JTI Tabocco", imageUrl: "https://picsum.photos/350/200"),
        CampaignModel(code: 6, name: "Eczacıbaşı", imageUrl: "https://picsum.photos/350/200"),
        CampaignModel(code: 7, name: "Haribbo", imageUrl: "https://picsum.photos/350/200"),
        CampaignModel(code: 8, name: "Şölen", imageUrl: "https://picsum.photos/350/200"),
        CampaignModel(code: 9, name: "Mey İçki", imageUrl: "https://picsum.photos/350/200"),
        CampaignModel(code: 10, name: "Efes", imageUrl: "https://picsum.photos/350/200")
    ]
}
