//
//  ProductCollectionViewCell.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct ProductCollectionViewCell: View {
    var rowItem: ProductModel
    @State private var showingBottomSheet: Bool = false
    
    var body: some View {
        ZStack {
            //RectangleView()
            Color.cellBackgroundColor
                .frame(width: UIScreen.main.bounds.width * 0.47, height: UIScreen.main.bounds.height * 0.5, alignment: .center)
                .cornerRadius(10)
                .shadow(color: .black.opacity(0.5),
                        radius: 0.5,
                        x: 0, y: 3)
                .shadow(color: .black.opacity(0.5),
                        radius: 0.5,
                        x: 0, y: -3)
            VStack(alignment: .leading, spacing: 10) {
                ScrollableProductImageView()
                    .frame(width: UIScreen.main.bounds.width * 0.45, height: UIScreen.main.bounds.height * 0.3, alignment: .center)
                    .shadow(color: .black.opacity(0.5),
                            radius: 3,
                            x: 0, y: 3)
                
                Text(rowItem.name)
                    .fontWeight(.heavy)
                    .padding(.horizontal, 10)
                
                HStack(spacing: 10) {
                    ProductStarView()
                        .padding(.horizontal, 10)
                    
                    Text("(1728)")
                        .font(.system(size: 12))
                        .fontWeight(.thin)
                        .foregroundColor(.secondary)
                }
                
                ExtraArgumentView()
                    .padding(.horizontal, 10)
                
                HStack(spacing: 10) {
                    Text("2000 ₺")
                        .fontWeight(.medium)
                        .foregroundColor(.secondary)
                        .font(.system(size: 13))
                        .padding(.horizontal, 10)
                    Text("1000 ₺")
                        .font(.system(size: 18))
                        .fontWeight(.bold)
                        .foregroundColor(Color.buttonBlueColor)
                        .padding(.horizontal, 10)
                }
                
                Button {
                    showingBottomSheet.toggle()
                    print("sepete eklendi")
                } label: {
                    Text("Sepete Ekle")
                        .foregroundColor(.white)
                }
                .sheet(isPresented: $showingBottomSheet) {
                    AddToBasketButtomSheet(rowItem: rowItem)
                        .presentationDetents([.medium, .large])
                }
                
                .frame(width: UIScreen.main.bounds.height * 0.21, height: nil, alignment: .center)
                .buttonStyle(.bordered)
                .background(Color.buttonBlueColor)
                .cornerRadius(10)
            }
            .padding(20)
        }
    }
}

struct ProductCollectionViewCell_Previews: PreviewProvider {
    static var previews: some View {
        ProductCollectionViewCell(rowItem: ProductModelList.mProductList[0])
    }
}
