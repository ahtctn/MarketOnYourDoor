//
//  CompanyModel.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import Foundation
import SwiftUI

class CompanyModel: Identifiable {
    
    var code: Int
    var name: String
    var logoUrl: String
    var desc: String
    var color: Color
    
    required init(code: Int, name: String, logoUrl: String, desc: String, color: Color) {
        self.code = code
        self.name = name
        self.logoUrl = logoUrl
        self.desc = desc
        self.color = color
    }
}

struct CompanyDataModelList {
    static let mList = [
        CompanyModel(code: 1, name: "Nestle", logoUrl: "https://picsum.photos/200/200", desc: "Çikolata, İçecek ve Kahveler", color: Color.nestleColor),
        CompanyModel(code: 2, name: "Mondelez", logoUrl: "https://picsum.photos/200/200", desc: "Kaliteli mondelez", color: Color.mondelezColor),
        CompanyModel(code: 3, name: "Uludağ İçecek", logoUrl: "https://picsum.photos/200/200", desc: "Meşrubat ürünleri", color: Color.uludagIcecekColor),
        CompanyModel(code: 4, name: "Imperial Tabocco", logoUrl: "https://picsum.photos/200/200", desc: "Tütün ürünleri", color: Color.imperialTaboccoColor),
        CompanyModel(code: 5, name: "JTI Tabocco", logoUrl: "https://picsum.photos/200/200", desc: "Tütün Ürünleri", color: Color.JTITobaccoColor),
        CompanyModel(code: 6, name: "Eczacıbaşı", logoUrl: "https://picsum.photos/200/200", desc: "Tıbbi ürünler", color: Color.ecazcibasiColor),
        CompanyModel(code: 7, name: "Haribbo", logoUrl: "https://picsum.photos/200/200", desc: "Şekerleme ve çikolata", color: Color.haribboColor),
        CompanyModel(code: 8, name: "Şölen", logoUrl: "https://picsum.photos/200/200", desc: "Şekerleme ve çikolata", color: Color.solenColor),
        CompanyModel(code: 9, name: "Mey İçki", logoUrl: "https://picsum.photos/200/200", desc: "Alkollü meşrubat", color: Color.meyIckiColor),
        CompanyModel(code: 10, name: "Efes", logoUrl: "https://picsum.photos/200/200", desc: "Alkollü meşrubat", color: Color.efesColor)
    ]
}
