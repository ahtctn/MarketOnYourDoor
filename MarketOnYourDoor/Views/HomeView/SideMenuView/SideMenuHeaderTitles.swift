//
//  SideMenuHeaderTitles.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 10.06.2023.
//

import SwiftUI

struct SideMenuHeaderTitles: View {
    
    @Binding var productGroupsIndex: ProductGroup
    @Binding var productSupplementGroupsIndex: ProductSupplementGroup
    @Binding var starredProductPickerIndex: StarRating
    
    @Binding var lowestTextEntered: String
    @Binding var highestTextEntered: String
    
    @Binding var isStockStatusVisible: Bool
    @Binding var isProductGroupsVisible: Bool
    @Binding var isProductSupplementGroupsVisible: Bool
    @Binding var isStarredProductPickerVisible: Bool
    @Binding var isTextFieldVisible: Bool
    
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text("Filtreleme")
                .foregroundColor(.black)
                .font(.system(size: 20, weight: .bold, design: .default))
                .padding(.top, 20)
            
            Spacer()
            
            Button(action: {
                print("Temizle Button Tapped")
                resetValues()
                isStockStatusVisible = false
                isProductGroupsVisible = false
                isProductSupplementGroupsVisible = false
                isStarredProductPickerVisible = false
                isTextFieldVisible = false
            }) {
                Text("Temizle")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding(.top, 20)
                    .foregroundColor(Color.buttonBlueColor)
            }
        }
    }
    
    private func resetValues() {
        productGroupsIndex = .group1
        productSupplementGroupsIndex = .group2
        starredProductPickerIndex = .oneStar
        lowestTextEntered = ""
        highestTextEntered = ""
    }
}
//struct SideMenuHeaderTitles_Previews: PreviewProvider {
//    static var previews: some View {
//        SideMenuHeaderTitles(productGroupsIndex: <#Binding<ProductGroup>#>, productSupplementGroupsIndex: <#Binding<ProductSupplementGroup>#>, starredProductPickerIndex: <#Binding<StarRating>#>, lowestTextEntered: <#Binding<String>#>, highestTextEntered: <#Binding<String>#>, isTextFieldVisible: <#Binding<Bool>#>)
//    }
//}
