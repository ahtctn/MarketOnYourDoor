//
//  SideMenuView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 7.06.2023.
//

import SwiftUI

struct SideMenuView: View {
    
    let sideMenuModelRow: SideMenuModel
    @State private var isPresented: Bool = false
    @State private var isTextFieldVisible: Bool = false
    
    @State private var isStockPickerVisible: Bool = false
    @State private var stockPickerIndex: StockStatus = .onlyInStock
    
    @State private var isStarredProductsPickerVisible: Bool = false
    @State private var starredProductPickerIndex: StarRating = .oneStar
    
    @State private var lowestTextEntered: String = ""
    @State private var highestTextEntered: String = ""
    
    @State private var isProductGroupsVisible: Bool = false
    @State private var productGroupsIndex: ProductGroup = .group1
    
    @State private var isProductSupplementGroups: Bool = false
    @State private var productSupplementGroupsIndex: ProductSupplementGroup = .group1

    @State private var starText: String = ""
    let starPickerOptions = ["⭐️", "⭐️⭐️", "⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    
    var body: some View {
        ZStack {
            List {
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
                        Picker(selection: $stockPickerIndex, label: Text("Stok")) {
                            ForEach(StockStatus.allCases, id: \.self) { group in
                                Text(group.labelText).tag(group)
                            }
                        }
                    }
                    
                    if index == 1 && isProductGroupsVisible {
                        Picker(selection: $productGroupsIndex, label: Text("Grup")) {
                            ForEach(ProductGroup.allCases, id: \.self) { group in
                                Text(group.labelText).tag(group)
                            }
                        }
                    }
                    
                    if index == 2 && isProductSupplementGroups {
                        Picker(selection: $productSupplementGroupsIndex, label: Text("Ek")) {
                            ForEach(ProductSupplementGroup.allCases, id: \.self) { group in
                                Text(group.labelText).tag(group)
                            }
                        }
                    }
                    
                    if index == 3 && isStarredProductsPickerVisible {
                        Picker(selection: $starredProductPickerIndex, label: Text("Derece")) {
                            ForEach(StarRating.allCases, id: \.self) { group in
                                Text(group.labelText).tag(group)
                            }
                        }
                        
                        .padding(.horizontal)
                        .transition(.move(edge: .bottom))
                        .withAnimation(.easeInOut(duration: 0.2))
                    }
                    
                    if index == 4 && isTextFieldVisible {
                        VStack {
                            TextField("En düşük fiyat", text: $lowestTextEntered)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(UIKeyboardType.asciiCapableNumberPad)
                                .padding()
                                .offset(y: isTextFieldVisible ? 0 : -100) // Animate the offset of the TextField
                            
                            TextField("En yüksek fiyat", text: $highestTextEntered)
                                .keyboardType(UIKeyboardType.asciiCapableNumberPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                                .offset(y: isTextFieldVisible ? 0 : -100) // Animate the offset of the TextField
                            
                            if Int(lowestTextEntered) ?? 0 > Int(highestTextEntered) ?? 0 || Int(lowestTextEntered) ?? 0 == Int(highestTextEntered) ?? 0 {
                                Text("En düşük fiyat en büyük fiyattan daha büyük olamaz")
                                    .lineLimit(2)
                                    .foregroundColor(Color.red)
                                    .font(.system(size: 12, weight: .regular, design: .default))
                                    .padding(.trailing)
                            }
                            
                            Spacer()
                        }
                        .offset(y: isTextFieldVisible ? 0 : UIScreen.main.bounds.height + 100) // Set final offset for animation
                        .onAppear {
                            withAnimation(.easeInOut(duration: 2.0)) {
                                isTextFieldVisible = true
                            }
                        }
                        
                        .onDisappear {
                            withAnimation(.easeInOut(duration: 2.0)) {
                                isTextFieldVisible = false
                            }
                        }
                    }
                }
            }
            .frame(minWidth: 300, maxWidth: 350)
            .background(.white)
            
            SideMenuListProductsButton()
        }
        .shadow(color: .black, radius: 5, x: 0, y: 3)
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
        return productGroupsIndex.labelText
    }
        
    private func productSupplementGroupLabelText() -> String {
        return productSupplementGroupsIndex.labelText
    }
    
    private func getStockLabelText() -> String {
        return stockPickerIndex.labelText
    }

}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(sideMenuModelRow: SideMenuModelList.mSideMenuModelList[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
