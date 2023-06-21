//
//  FilteredProductsView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 21.06.2023.
//

import SwiftUI

struct FilteredProductsView: View {
    let companyModel: CompanyModel
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
                    ForEach(companyModel.products) { item in
                        ProductCollectionViewCell(rowItem: item)
                    }
                }
            }
        }
    }
}

struct FilteredProductsView_Previews: PreviewProvider {
    static var previews: some View {
        FilteredProductsView(companyModel: CompanyDataModelList.mList[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

