//
//  SideMenuView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 7.06.2023.
//

import SwiftUI

struct SideMenuView: View {
    let sideMenuModelRow: SideMenuModel
    
    @Binding var lowestTextEntered: String
    @Binding var highestTextEntered: String
    @Binding var isTextFieldVisible: Bool
    
    let companyModel: CompanyModel
    
    var body: some View {
        ZStack {
            List {
                SideMenuContent(sideMenuModelRow: sideMenuModelRow)
            }
            .frame(minWidth: 300, maxWidth: 350)
            .background(.white)
            
            SideMenuListProductsButton(companyModel: companyModel)
        }
        .shadow(color: .black, radius: 5, x: 0, y: 3)
    }
    
    
    
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        
        SideMenuView(sideMenuModelRow: SideMenuModelList.mSideMenuModelList[0], lowestTextEntered: .constant("1000"), highestTextEntered: .constant("2000"), isTextFieldVisible: .constant(.random()), companyModel: CompanyDataModelList.mList[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
