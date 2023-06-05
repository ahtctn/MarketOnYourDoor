//
//  GeneralEnums.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import Foundation

import Foundation

enum EnumTab: String, CaseIterable {
    case Home = "Home"
    case Products = "Services"
    case MyBasket = "Partners"
    case MyList = "Activity"
    
    var systemImage: String {
        switch self {
        case .Home:
            return "house"
        case .Products:
            return "envelope.open.badge.clock"
        case .MyBasket:
            return "hand.raised"
        case .MyList:
            return "bell"
        }
    }
    
    var index: Int {
        return EnumTab.allCases.firstIndex(of: self) ?? 0
    }
}
