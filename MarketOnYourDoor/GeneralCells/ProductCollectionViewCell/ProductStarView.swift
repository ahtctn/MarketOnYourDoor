//
//  ProductStarView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//
import SwiftUI

struct ProductStarView: View {
    var rowItem: ProductModel
    
    var body: some View {
        HStack(alignment: .center) {
            ForEach(0..<5) { index in
                starImage(index: index)
            }
        }
    }
    
    private func starImage(index: Int) -> some View {
        let isFilledStar: Bool
        if rowItem.rateStar >= Double(index + 1) {
            isFilledStar = true
        } else {
            isFilledStar = false
        }
        
        return Image(systemName: isFilledStar ? "star.fill" : "star.fill")
            .foregroundColor(isFilledStar ? .yellow : .gray)
            .frame(width: 10, height: 10, alignment: .center)
    }
}

struct ProductStarView_Previews: PreviewProvider {
    static var previews: some View {
        ProductStarView(rowItem: ProductModelList.mProductList[0].first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
