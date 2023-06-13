//
//  CompanyModel.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

class CompanyModel: Identifiable {
    
    var code: Int
    var name: String
    var logoUrl: String
    var desc: String
    var color: Color
    var products: [ProductModel]
    
    required init(code: Int, name: String, logoUrl: String, desc: String, color: Color, products: [ProductModel]) {
        self.code = code
        self.name = name
        self.logoUrl = logoUrl
        self.desc = desc
        self.color = color
        self.products = products
    }
}

struct CompanyDataModelList {
    static let mList = [
        CompanyModel(code: 1, name: CompanyName.nestle.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Çikolata, İçecek ve Kahveler", color: Color.nestleColor, products: ProductModelList.nestleProducts),
        CompanyModel(code: 2, name: CompanyName.mondelez.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Kaliteli mondelez", color: Color.mondelezColor, products: ProductModelList.mondelezProducts),
        CompanyModel(code: 3, name: CompanyName.uludagIcecek.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Meşrubat ürünleri", color: Color.uludagIcecekColor, products: ProductModelList.uludagIcecekProducts),
        CompanyModel(code: 4, name: CompanyName.imperialTabocco.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Tütün ürünleri", color: Color.imperialTaboccoColor, products: ProductModelList.imperialTaboccoProducts),
        CompanyModel(code: 5, name: CompanyName.jtiTabocco.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Tütün Ürünleri", color: Color.JTITobaccoColor, products: ProductModelList.jtiTaboccoProducts),
        CompanyModel(code: 6, name: CompanyName.eczacibasi.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Tıbbi ürünler", color: Color.ecazcibasiColor, products: ProductModelList.eczacibasiProducts),
        CompanyModel(code: 7, name: CompanyName.haribbo.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Şekerleme ve çikolata", color: Color.haribboColor, products: ProductModelList.haribboProducts),
        CompanyModel(code: 8, name: CompanyName.solen.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Şekerleme ve çikolata", color: Color.solenColor, products: ProductModelList.solenProducts),
        CompanyModel(code: 9, name: CompanyName.meyIcki.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Alkollü meşrubat", color: Color.meyIckiColor, products: ProductModelList.meyIckiProducts),
        CompanyModel(code: 10, name: CompanyName.efes.rawValue, logoUrl: "https://picsum.photos/200/200", desc: "Alkollü meşrubat", color: Color.efesColor, products: ProductModelList.efesProducts)
    ]
}
