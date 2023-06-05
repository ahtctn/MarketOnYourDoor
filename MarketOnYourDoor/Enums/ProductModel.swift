//
//  ProductModel.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

class ProductModel: Identifiable {
    //var id = UUID()
    var image: UIImage
    var name: String
    var rateStar: Double
    var rateCount: Int
    var oldPrice: Double?
    var currentPrice: Double
    
    required init(image: UIImage, name: String, rateStar: Double, rateCount: Int, oldPrice: Double?, currentPrice: Double) {
        self.image = image
        self.name = name
        self.rateStar = rateStar
        self.rateCount = rateCount
        self.oldPrice = oldPrice
        self.currentPrice = currentPrice
    }
}

struct ProductModelList {
    static let mProductList = [
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0),
        ProductModel(image: UIImage(systemName: "multiply.circle.fill")!, name: "Gofret", rateStar: 3, rateCount: 1000, oldPrice: 1200.0, currentPrice: 1000.0)
    ]
}
