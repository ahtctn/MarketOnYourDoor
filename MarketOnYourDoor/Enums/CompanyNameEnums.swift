//
//  CompanyNameEnums.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 13.06.2023.
//

import Foundation

enum CompanyName: String, CaseIterable {
    case nestle = "Nestle"
    case mondelez = "Mondelez"
    case uludagIcecek = "Uludağ İçecek"
    case imperialTabocco = "Imperial Tabocco"
    case jtiTabocco = "JTI Tabocco"
    case eczacibasi = "Eczacıbaşı"
    case haribbo = "Haribbo"
    case solen = "Şölen"
    case meyIcki = "Mey İçki"
    case efes = "Efes"
    
    var stringValue: String {
        switch self {
        case .nestle:
            return "Nestle"
        case .mondelez:
            return "Mondelez"
        case .uludagIcecek:
            return "Uludağ İçecek"
        case .imperialTabocco:
            return "Imperial Tabocco"
        case .jtiTabocco:
            return "JTI Tabocco"
        case .eczacibasi:
            return "Eczacıbaşı"
        case .haribbo:
            return "Haribbo"
        case .solen:
            return "Şölen"
        case .meyIcki:
            return "Mey İçki"
        case .efes:
            return "Efes"
        }
    }
    
}


