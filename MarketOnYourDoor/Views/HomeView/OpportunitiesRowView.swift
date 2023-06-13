//
//  OpportunitiesRowView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct OpportunitiesRowView: View {
    var mDataList: [ProductModel]
    let rows = [GridItem(.flexible())]
    var body: some View {
        LazyHGrid(rows: rows, spacing: 1) {
            ForEach(mDataList) { item in
                ProductCollectionViewCell(rowItem: item)
            }
            .padding(-12)
            .clipShape(Rectangle())
        }
        .padding(0)
    }
}

struct OpportunitiesRowView_Previews: PreviewProvider {
    static var previews: some View {
        OpportunitiesRowView(mDataList: ProductModelList.mProductList[0])
    }
}


