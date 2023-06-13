//
//  AddToBasketButtomSheet.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct AddToBasketButtomSheet: View {
    var rowItem: ProductModel
    
    @State var selectedButton: ButtonType? = nil
    @State private var quantityOfProducts: Int = 0
    
    var body: some View {
        VStack(alignment: .center) {
            VStack(alignment: .leading, spacing: 15) {
                //MARK: ÜRÜN BİLGİSİ
                
                HStack (alignment: .top, spacing: 15) {
                    
                    ScrollableProductImageView()
                        .padding(.leading, 10)
                        .frame(minWidth: 100, maxWidth: 200, minHeight: 100, maxHeight: 200, alignment: .leading)
                        .cornerRadius(10)
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
                
                HStack(alignment: .center, spacing: 5) {
                    //MARK: ADET
                    Button {
                        selectedButton = .adet
                    } label: {
                        AdetInformationView(isSelected: selectedButton == .adet)
                            .padding(.leading, 10)
                    }
                    //MARK: KOLİ
                    Button {
                        selectedButton = .koli
                    } label: {
                        KoliInformationView(isSelected: selectedButton == .koli)
                    }
                    //MARK: PAKET
                    Button {
                        selectedButton = .paket
                    } label: {
                        PaketInformationView(isSelected: selectedButton == .paket)
                    }
                    //MARK: PALET
                    Button {
                        selectedButton = .palet
                    } label: {
                        PaletInformationView(isSelected: selectedButton == .palet)
                    }
                }
                
                
                //MARK: BİRİM VIEW EKLENECEK
                
                Divider()
                    .fontWeight(.bold)
                    .padding(.bottom, 75)
                
                
            }
            
            ZStack {
                Color.buttonBlueColor
                    .frame(minWidth: 100, maxWidth: 150, minHeight: 30, maxHeight: 50, alignment: .center)
                    .cornerRadius(10)
                    .shadow(color: .black, radius: 3, x: 0, y: 3)
                HStack(alignment: .center, spacing: 10) {
                    Stepper(
                        "", value: $quantityOfProducts,
                            in: 0...100,
                            step: 1)
                    .labelsHidden()
                    .accentColor(Color.buttonBlueColor)
                    .foregroundColor(Color.buttonBlueColor)
                    
                    Text("\(quantityOfProducts)")
                        .font(.system(size: 25, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
            }
            
            //MARK: COUNTER EKLENECEK
        }
    }
}

struct AddToBasketButtomSheet_Previews: PreviewProvider {
    static var previews: some View {
        AddToBasketButtomSheet(rowItem: ProductModel(img: UIImage(systemName: "person.fill")!, name: "lkj", description: "lkj", stockSituation: "lkj", rateStar: 34.2, rateCount: 2, oldPrice: 23.432, currentPrice: 234.432, brand: "gsfgd"))
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
