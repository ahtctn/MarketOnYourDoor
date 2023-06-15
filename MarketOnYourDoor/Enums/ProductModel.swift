//
//  ProductModel.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

class ProductModel: Identifiable {
    var id: UUID = UUID()
    var img: UIImage
    var name: String
    var description: String
    var stockSituation: String?
    var rateStar: Double
    var rateCount: Int
    var oldPrice: Double?
    var currentPrice: Double
    var brand: String?
    
    required init(img: UIImage, name: String, description: String, stockSituation: String?, rateStar: Double, rateCount: Int, oldPrice: Double?, currentPrice: Double, brand: String?) {
        self.img = img
        self.name = name
        self.description = description
        self.stockSituation = stockSituation
        self.rateStar = rateStar
        self.rateCount = rateCount
        self.oldPrice = oldPrice
        self.currentPrice = currentPrice
        self.brand = brand
    }
    
//    static func == (lhs: ProductModel, rhs: ProductModel) -> Bool {
//        return lhs.id == rhs.id
//    }
}

struct ProductModelList {
    static let nestleProducts = [
        //MARK: NESTLE
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "KitKat",
                     description: "Nestle ile lezzetin sınırlarını zorlayın!",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 4.0, rateCount: 1000,
                     oldPrice: 40, currentPrice: 35,
                     brand: CompanyName.nestle.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Maxibon",
                     description: "Sizi dondurmanın büyülü dünyasına davet ediyoruz",
                     stockSituation: "Sınırlı sayıda, acele edin!",
                     rateStar: 3.2, rateCount: 3041,
                     oldPrice: 200, currentPrice: 180,
                     brand: CompanyName.nestle.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Lion",
                     description: "Damakları şenlendirmenin zamanı geldi",
                     stockSituation: "Tükenmek üzere, son günler.",
                     rateStar: 2.1, rateCount: 68,
                     oldPrice: 356, currentPrice: 340,
                     brand: CompanyName.nestle.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Nesquik",
                     description: "Nesquik ile hayatınıza lezzet katın.",
                     stockSituation: "Sınırlı sayıda, acele edin!",
                     rateStar: 4.4, rateCount: 126,
                     oldPrice: 90, currentPrice: 79,
                     brand: CompanyName.nestle.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Aero",
                     description: "Çikolata tutkunları buraya",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 3.4, rateCount: 1202,
                     oldPrice: 110, currentPrice: 99,
                     brand: CompanyName.nestle.rawValue),
    ]
    
    static let mondelezProducts = [
        //MARK: MONDELEZ
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Oreo",
                     description: "Keyifli bir atıştırmalık molası için doğru adres",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 4.8, rateCount: 3683,
                     oldPrice: 70, currentPrice: 50,
                     brand: CompanyName.mondelez.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Cote d'Or",
                     description: "Tatlı bir macera",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 4.9, rateCount: 12412,
                     oldPrice: 300, currentPrice: 280,
                     brand: CompanyName.mondelez.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Cadbury Crunchie",
                     description: "Baş döndüren çikolata seçenekleri",
                     stockSituation: "Sınırlı sayıda, acele edin!",
                     rateStar: 1.3, rateCount: 4,
                     oldPrice: 180, currentPrice: 150,
                     brand: CompanyName.mondelez.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Toblerone",
                     description: "Her anınızı tatlandırın",
                     stockSituation: "Bitti bitiyor!",
                     rateStar: 4.4, rateCount: 134,
                     oldPrice: 49, currentPrice: 39,
                     brand: CompanyName.mondelez.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Cadbury Fudge",
                     description: "Lezzet molasına hazır olun.",
                     stockSituation: "Tükenmek üzere, son günler.",
                     rateStar: 2.9, rateCount: 1209,
                     oldPrice: 300, currentPrice: 270,
                     brand: CompanyName.mondelez.rawValue),
    ]
    
    static let uludagIcecekProducts = [
        //MARK: ULUDAĞ İÇECEK
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Uludağ Gazoz",
                     description: "Buz gibi bir serinlik!",
                     stockSituation: "Bitti bitiyor!",
                     rateStar: 4.4, rateCount: 134,
                     oldPrice: 49, currentPrice: 39,
                     brand: CompanyName.uludagIcecek.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Carrefour Su",
                     description: "Kaynaktan bardağa!",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 3.2, rateCount: 3683,
                     oldPrice: 50, currentPrice: 50,
                     brand: CompanyName.uludagIcecek.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "IQ Energy Drink",
                     description: "Yüksek enerji unsuru!",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 1.9, rateCount: 12412,
                     oldPrice: 300, currentPrice: 280,
                     brand: CompanyName.uludagIcecek.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Cappy Meyve Suyu",
                     description: "En taze meyve suları sofranızda!",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 2.8, rateCount: 168,
                     oldPrice: 50, currentPrice: 40,
                     brand: CompanyName.uludagIcecek.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Schweppes Bitter Lemon",
                     description: "Schweppesss",
                     stockSituation: "Tükenmek üzere, son günler.",
                     rateStar: 2.9, rateCount: 1209,
                     oldPrice: 300, currentPrice: 270,
                     brand: CompanyName.uludagIcecek.rawValue),
    ]
    
    static let imperialTaboccoProducts = [
        //MARK: IMPERIAL TABOCCO
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "Golden Virginia",
                     description: "Altın tütün.",
                     stockSituation: "Tükenmek üzere, son günler.",
                     rateStar: 4.4, rateCount: 134,
                     oldPrice: 1000, currentPrice: 900,
                     brand: CompanyName.imperialTabocco.rawValue),
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "Drum",
                     description: "Kusursuz bir tütün deneyimi",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 3.2, rateCount: 123,
                     oldPrice: 130, currentPrice: 120,
                     brand: CompanyName.imperialTabocco.rawValue),
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "Pueblo",
                     description: "Zarafet ve kaliteyi aynı anda sunar",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 1.1, rateCount: 1,
                     oldPrice: 100, currentPrice: 90,
                     brand: CompanyName.imperialTabocco.rawValue),
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "Prince",
                     description: "Prens tütünü",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 4.4, rateCount: 191,
                     oldPrice: 100, currentPrice: 95,
                     brand: CompanyName.imperialTabocco.rawValue),
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "Golden American",
                     description: "Gerçek Texas Tütünü!",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 3.1, rateCount: 103,
                     oldPrice: 110, currentPrice: 95,
                     brand: CompanyName.imperialTabocco.rawValue),
    ]
    
    static let jtiTaboccoProducts = [
        //MARK: JTITABOCCO
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "Camel",
                     description: "Altın tütün.",
                     stockSituation: "Tükenmek üzere, son günler.",
                     rateStar: 4.4, rateCount: 134,
                     oldPrice: 1000, currentPrice: 900,
                     brand: CompanyName.jtiTabocco.rawValue),
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "Winston",
                     description: "Kusursuz bir tütün deneyimi",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 3.2, rateCount: 123,
                     oldPrice: 130, currentPrice: 120,
                     brand: CompanyName.jtiTabocco.rawValue),
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "LD",
                     description: "Zarafet ve kaliteyi aynı anda sunar",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 1.1, rateCount: 1,
                     oldPrice: 100, currentPrice: 90,
                     brand: CompanyName.jtiTabocco.rawValue),
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "Sobranie",
                     description: "Prens tütünü",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 4.4, rateCount: 191,
                     oldPrice: 100, currentPrice: 95,
                     brand: CompanyName.jtiTabocco.rawValue),
        ProductModel(img:UIImage(systemName: "multiply.circle.fill")!,
                     name: "Silk Cut",
                     description: "Gerçek Texas Tütünü!",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 3.1, rateCount: 103,
                     oldPrice: 110, currentPrice: 95,
                     brand: CompanyName.jtiTabocco.rawValue),
    ]
    
    static let eczacibasiProducts = [
        //MARK: ECZACIBAŞI
        
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Nivea",
                     description: "Güzellik ve bakımın tadını çıkarın!",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 4.1, rateCount: 103,
                     oldPrice: 1100, currentPrice: 1000,
                     brand: CompanyName.eczacibasi.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Bepanthen",
                     description: "Kaliteli ve güvenilir ürünlerle sağlığınıza",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 3.0, rateCount: 103,
                     oldPrice: 1010, currentPrice: 900,
                     brand: CompanyName.eczacibasi.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Duravit",
                     description: "Mutfak deneyiminizi baştan tasarlayın.",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 2.1, rateCount: 103,
                     oldPrice: 1310, currentPrice: 1095,
                     brand: CompanyName.eczacibasi.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "VitrA",
                     description: "İleri teknolojiyle tasarlanan Eczacıbaşı ürünleri",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 2.4, rateCount: 103,
                     oldPrice: 1410, currentPrice: 850,
                     brand: CompanyName.eczacibasi.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Schneider",
                     description: "Yenilikçi elektronik ürünleri",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 1100, currentPrice: 950,
                     brand: CompanyName.eczacibasi.rawValue),
    ]
    
    static let haribboProducts = [
        //MARK: HARIBBO
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Altın Ayıcık",
                     description: "Haribbo Altın Ayıcık",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.haribbo.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Happy Cherries",
                     description: "Mutlu kirazların lezzeti.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.haribbo.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Karam",
                     description: "Tatlı bir atıştırma keyfi yaşayın.",
                     stockSituation: "Bitti, bitiyor!",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.haribbo.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Fresh & Easy",
                     description: "Tatlı dünyanızı keşfedin.",
                     stockSituation: "Fırsattaki ürünler bitmek üzere!",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.haribbo.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Delicio",
                     description: "Tatlı bir dondurma kaçamağı yapın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.haribbo.rawValue),
    ]
    
    static let solenProducts = [
        //MARK: ŞÖLEN
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Çokokrem",
                     description: "Tatlı bir kaçamak yapın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.solen.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Lokum",
                     description: "Tatlı bir kaçamak yapın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.solen.rawValue),

        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Şokella",
                     description: "Tatlı bir kaçamak yapın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.solen.rawValue),

        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Karam",
                     description: "Tatlı bir kaçamak yapın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.solen.rawValue),

        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Vouge",
                     description: "Tatlı bir kaçamak yapın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.solen.rawValue),
    ]
    
    static let meyIckiProducts = [
        //MARK: MEY İÇKİ
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Yeni Rakı",
                     description: "Damak zevkinizi keşfedin.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 320, currentPrice: 299,
                     brand: CompanyName.meyIcki.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Bomonti",
                     description: "Bira, gelenekseldir.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 500, currentPrice: 490,
                     brand: CompanyName.meyIcki.rawValue),

        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Binboğa",
                     description: "İçki keyfinizi doruklarda yaşayın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 1000, currentPrice: 900,
                     brand: CompanyName.meyIcki.rawValue),

        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Alkent",
                     description: "Tatlı bir kaçamak yapın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 10, currentPrice: 9,
                     brand: CompanyName.meyIcki.rawValue),

        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Gorki",
                     description: "Tatlı bir kaçamak yapın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 310, currentPrice: 250,
                     brand: CompanyName.meyIcki.rawValue),
    ]
    
    static let efesProducts = [
        //MARK: EFES
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Efes Dark",
                     description: "Birayı yeniden keşfedin.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 70, currentPrice: 69,
                     brand: CompanyName.efes.rawValue),
        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Efes Light",
                     description: "Light birkaçamak yapın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 60, currentPrice: 59,
                     brand: CompanyName.efes.rawValue),

        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Efes Malt",
                     description: "Ferah bir içecek deneyimi yaşayın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 50, currentPrice: 40,
                     brand: CompanyName.efes.rawValue),

        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Efes Fıçı",
                     description: "Efes Fıçı ile lezzet dolu anlar yaşayın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 30, currentPrice: 29,
                     brand: CompanyName.efes.rawValue),

        ProductModel(img: UIImage(systemName: "multiply.circle.fill")!,
                     name: "Efes Bohem",
                     description: "Efes Bohem ile damak zevkinizi şımartın.",
                     stockSituation: "Son 3 Gün sınırlı sayıda",
                     rateStar: 5.0, rateCount: 103,
                     oldPrice: 100, currentPrice: 90,
                     brand: CompanyName.efes.rawValue),
    ]
    
    static let mProductList = [
        nestleProducts, mondelezProducts, uludagIcecekProducts, imperialTaboccoProducts, jtiTaboccoProducts, eczacibasiProducts, haribboProducts, solenProducts, meyIckiProducts, efesProducts
    ]
}
