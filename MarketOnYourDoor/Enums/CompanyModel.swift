//
//  CompanyModel.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import Foundation

class CompanyModel: Identifiable {
    //var id = UUID()
    var code: Int
    var name: String
    var logoUrl: String
    
    required init(code: Int, name: String, logoUrl: String) {
        self.code = code
        self.name = name
        self.logoUrl = logoUrl
    }
}

struct CompanyDataModelList {
    static let mList = [
        CompanyModel(code: 1, name: "Nestle", logoUrl: "https://picsum.photos/200/200"),
        CompanyModel(code: 2, name: "Mondelez", logoUrl: "https://picsum.photos/200/200"),
        CompanyModel(code: 3, name: "Uludağ İçecek", logoUrl: "https://picsum.photos/200/200"),
        CompanyModel(code: 4, name: "Imperial Tabocco", logoUrl: "https://picsum.photos/200/200"),
        CompanyModel(code: 5, name: "JTI Tabocco", logoUrl: "https://picsum.photos/200/200"),
        CompanyModel(code: 6, name: "Eczacıbaşı", logoUrl: "https://picsum.photos/200/200"),
        CompanyModel(code: 7, name: "Haribbo", logoUrl: "https://picsum.photos/200/200"),
        CompanyModel(code: 8, name: "Şölen", logoUrl: "https://picsum.photos/200/200"),
        CompanyModel(code: 9, name: "Mey İçki", logoUrl: "https://picsum.photos/200/200"),
        CompanyModel(code: 10, name: "Efes", logoUrl: "https://picsum.photos/200/200")
    ]
}
