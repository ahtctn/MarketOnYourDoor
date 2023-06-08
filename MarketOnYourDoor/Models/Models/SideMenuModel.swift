//
//  SideMenuModel.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 8.06.2023.
//

import SwiftUI

class SideMenuModel: Identifiable {
    var id = UUID()
    let titleSide: String
    let subtitleSide: String
    
    required init (titleSide: String, subtitleSide: String) {
        self.titleSide = titleSide
        self.subtitleSide = subtitleSide
    }
}

struct SideMenuModelList {
    static let mSideMenuModelList = [
        SideMenuModel(titleSide: "Stokta", subtitleSide: "Sadece Stokta Olanlar"),
        SideMenuModel(titleSide: "Ürün Gruplar", subtitleSide: "Tümü"),
        SideMenuModel(titleSide: "Ürün Ek Grupları", subtitleSide: "Tümü"),
        SideMenuModel(titleSide: "Yıldızlı Ürünler", subtitleSide: "Bir Yıldız ve Üzeri Ürünler"),
        SideMenuModel(titleSide: "Fiyat", subtitleSide: "1.500 ₺ - 2.500 ₺")
    ]
}
