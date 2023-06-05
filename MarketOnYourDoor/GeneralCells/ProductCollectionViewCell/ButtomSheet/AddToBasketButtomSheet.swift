//
//  AddToBasketButtomSheet.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct AddToBasketButtomSheet: View {
    var rowItem: ProductModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            //MARK: ÜRÜN BİLGİSİ
            HStack (alignment: .top) {
                ScrollableProductImageView()
                    .frame(minWidth: 100, maxWidth: 200, minHeight: 100, maxHeight: 200, alignment: .leading)
                VStack(alignment: .leading, spacing: 8) {
                    Text(rowItem.name)
                        .font(.body.weight(.bold))
                        .foregroundColor(Color.buttonBlueColor)
                    Text(rowItem.description)
                        .font(.footnote)
                        .lineLimit(2)
                        .foregroundColor(.secondary)
                    Text("₺\(rowItem.currentPrice.description)")
                        .font(.footnote).bold()
                        .foregroundColor(Color.buttonBlueColor)
                    Text(rowItem.stockSituation ?? "")
                        .font(.footnote).bold()
                        .foregroundColor(Color.secondaryCustomBlueColor)
                }
            }
            //MARK: ÇİZGİ ATILACAK
            Divider()
                .fontWeight(.bold)
            
            
            
            //MARK: BİRİM VIEW EKLENECEK
            
            Divider()
                .fontWeight(.bold)
            //MARK: COUNTER EKLENECEK
            
        }
    }
}

struct AddToBasketButtomSheet_Previews: PreviewProvider {
    static var previews: some View {
        AddToBasketButtomSheet(rowItem: ProductModelList.mProductList[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
