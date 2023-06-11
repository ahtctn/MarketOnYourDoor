//
//  SideMenuEnums.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 11.06.2023.
//

import Foundation

enum StockStatus: String, CaseIterable {
    case onlyInStock = "Sadece Stokta Olanlar"
    case outOfStock = "Stoktan Kalkanlar"
    case comingSoon = "Yakında Stokta"
    
    var labelText: String {
        return self.rawValue
    }
}

enum ProductGroup: Int, CaseIterable {
    case group0 = 0
    case group1 = 1
    case group2 = 2
    
    var labelText: String {
        switch self {
        case .group0:
            return "Ürün Grubu 1"
        case .group1:
            return "Ürün Grubu 2"
        case .group2:
            return "Ürün Grubu 3"
        }
    }
}

enum ProductSupplementGroup: Int, CaseIterable {
    case group0 = 0
    case group1 = 1
    case group2 = 2
    
    var labelText: String {
        switch self {
        case .group0:
            return "Ek grup 1"
        case .group1:
            return "Ek grup 2"
        case .group2:
            return "Ek grup 3"
        }
    }
}

enum StarRating: String, CaseIterable {
    case oneStar = "Bir yıldız ve üstü ürünler"
    case twoStars = "İki yıldız ve üstü ürünler"
    case threeStars = "Üç yıldız ve üstü ürünler"
    case fourStars = "Dört yıldız ve üstü ürünler"
    case fiveStars = "Beş yıldızlı ürünler"
    
    var labelText: String {
        switch self {
        case .oneStar:
            return "⭐️"
        case .twoStars:
            return "⭐️⭐️⭐️"
        case .threeStars:
            return "⭐️⭐️⭐️"
        case .fourStars:
            return "⭐️⭐️⭐️⭐️"
        case .fiveStars:
            return "⭐️⭐️⭐️⭐️⭐️"
        }
    }
}

enum SideMenuEnum: Int {
    case stock = 0
    case productGroups = 1
    case productSupplementGroups = 2
    case starredProducts = 3
    case textFields = 4

    var title: String {
        switch self {
        case .stock:
            return "Durum"
        case .productGroups:
            return "Grup"
        case .productSupplementGroups:
            return "Ek"
        case .starredProducts:
            return "Derece"
        case .textFields:
            return "Metin Alanları"
        }
    }

    var subtitle: String {
        switch self {
        case .stock:
            return "Stok Durumu"
        case .productGroups:
            return "Ürün Grubu"
        case .productSupplementGroups:
            return "Ek Grup"
        case .starredProducts:
            return "Yıldızlı Ürünler"
        case .textFields:
            return "Fiyat Aralığı"
        }
    }
}
