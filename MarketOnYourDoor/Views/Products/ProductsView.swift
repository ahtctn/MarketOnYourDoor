//
//  ProductsView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct ProductsView: View {
    static let width = (UIScreen.main.bounds.width / 2)
    static let column: Int = 2
    private let adaptiveColumns = [
        GridItem(.adaptive(minimum: width)),
        GridItem(.adaptive(minimum: width))
    ]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: adaptiveColumns, spacing: 3) {
                    ForEach(ProductModelList.mProductList) { item in
                        ProductCollectionViewCell(rowItem: item)
                    }
                }
            }
        }
    }
}

struct ProductsView_Previews: PreviewProvider {
    static var previews: some View {
        ProductsView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
