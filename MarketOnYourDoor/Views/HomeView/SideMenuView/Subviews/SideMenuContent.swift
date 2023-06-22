//
//  SideMenuContent.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 22.06.2023.
//

import SwiftUI

struct SideMenuContent: View {
    let sideMenuModelRow: SideMenuModel
    @State private var isPresented: Bool = false
    @State private var isStockPickerVisible: Bool = false
    @State private var isStarredProductsPickerVisible: Bool = false
    
    @Binding var lowestTextEntered: String
    @Binding var highestTextEntered: String
    @Binding var isTextFieldVisible: Bool
    
    @State private var isProductGroupsVisible: Bool = false
    @State private var isProductSupplementGroups: Bool = false
    @State private var starText: String = ""
    let starPickerOptions = ["⭐️", "⭐️⭐️", "⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    
    var body: some View {
        SideMenuHeaderTitles()
        
        ForEach(SideMenuModelList.mSideMenuModelList.indices, id: \.self) { index in
            
            Button {
                switch index {
                case 0:
                    withAnimation {
                        isStockPickerVisible.toggle()
                    }
                case 1:
                    withAnimation {
                        isProductGroupsVisible.toggle()
                    }
                case 2:
                    withAnimation {
                        isProductSupplementGroups.toggle()
                    }
                case 3:
                    withAnimation {
                        isStarredProductsPickerVisible.toggle()
                    }
                case 4:
                    withAnimation {
                        isTextFieldVisible.toggle()
                    }
                default: print("Bir sorun var")
                }
            } label: {
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text(SideMenuModelList.mSideMenuModelList[index].titleSide)
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .bold, design: .default))
                        
                        subtitleView(for: index)
                    }
                    
                    Spacer()
                    
                    Image(systemName: "arrow.right")
                        .foregroundColor(Color.buttonBlueColor)
                        .frame(width: 24, height: 24)
                        .alignmentGuide(.trailing) { _ in
                            CGFloat.infinity
                        }
                }
            }
            .overlay {
                GeometryReader { geometry in
                    Rectangle()
                        .fill(Color.clear)
                        .frame(width: geometry.size.width, height: 0)
                }
            }
            if index == 0 && isStockPickerVisible {
                StockPicker()
            }
            
            if index == 1 && isProductGroupsVisible {
                ProductGroups()
            }
            
            if index == 2 && isProductSupplementGroups {
                ProductSupplementGroups()
            }
            
            if index == 3 && isStarredProductsPickerVisible {
                StarredProductRates()
            }
            
            if index == 4 && isTextFieldVisible {
                PriceTextFieldViews(lowestTextEntered: $lowestTextEntered, highestTextEntered: $highestTextEntered, isTextFieldVisible: $isTextFieldVisible)
            }
        }
    }
    
    @ViewBuilder
    private func subtitleView(for index: Int) -> some View {
        switch index {
        case SideMenuEnum.stock.rawValue:
            VStack(alignment: .leading) {
                Text("\(getStockLabelText())")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        case SideMenuEnum.productGroups.rawValue:
            VStack(alignment: .leading) {
                Text("\(productGroupLabelText())")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        case SideMenuEnum.productSupplementGroups.rawValue:
            VStack(alignment: .leading) {
                Text("\(productSupplementGroupLabelText())")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        case SideMenuEnum.starredProducts.rawValue:
            VStack(alignment: .leading) {
                Text("\(getStarText())")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        case SideMenuEnum.textFields.rawValue:
            if lowestTextEntered != "" && highestTextEntered != "" {
                Text("\(lowestTextEntered) ₺ - \(highestTextEntered) ₺")
                    .foregroundColor(.secondary)
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .lineLimit(1)
                    .truncationMode(.tail)
            } else {
                EmptyView() // Varsayılan bir dönüş değeri
            }
        default:
            EmptyView() // Varsayılan bir dönüş değeri
        }
    }
    
    private func getStarText() -> String {
        
        let starredProductPickerIndex: StarRating = .fourStars
        
        if starredProductPickerIndex == .oneStar {
            return "Bir yıldız ve üzeri ürünler"
        } else if starredProductPickerIndex == .twoStars {
            return "İki yıldız ve üzeri ürünler"
        } else if starredProductPickerIndex == .threeStars {
            return "Üç yıldız ve üzeri ürünler"
        } else if starredProductPickerIndex == .fourStars {
            return "Dört yıldız ve üzeri ürünler"
        } else if starredProductPickerIndex == .fiveStars {
            return "Beş yıldızlı ürünler"
        } else {
            return "bir sorun var"
        }
    }
    
    private func productGroupLabelText() -> String {
        let productGroupsIndex: ProductGroup = .group2
        return productGroupsIndex.labelText
    }
    
    private func productSupplementGroupLabelText() -> String {
        let productSupplementGroupsIndex: ProductSupplementGroup = .group1
        return productSupplementGroupsIndex.labelText
    }
    
    private func getStockLabelText() -> String {
        let stockPickerIndex: StockStatus = .onlyInStock
        return stockPickerIndex.labelText
    }
}

struct SideMenuContent_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuContent(sideMenuModelRow: SideMenuModelList.mSideMenuModelList[0], lowestTextEntered: .constant("1000"), highestTextEntered: .constant("2000"), isTextFieldVisible: .constant(.random()))
    }
}
