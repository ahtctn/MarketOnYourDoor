//
//  BrandDetailView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 12.06.2023.
//

import SwiftUI

struct BrandDetailView: View {
    let companyModel: CompanyModel
    
    var body: some View {
        
        ZStack {
            companyModel.color
                .opacity(1)
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.height, alignment: .center)
            
            VStack(alignment: .center, spacing: 10) {
                AsyncImage(url: URL(string: companyModel.logoUrl), placeholder: {
                    Rectangle().foregroundColor(Color.black.opacity(0.5))
                })
                .aspectRatio(contentMode: .fill)
                .frame(width: (UIScreen.main.bounds.size.height * 0.4), height: (UIScreen.main.bounds.size.height * 0.4))
                .cornerRadius(10)
                .padding(.leading, 15)
                .shadow(color: .black, radius: 3, x: 0, y: 3)
                
                Text("\(companyModel.name)")
                    .foregroundColor(.white)
                    .font(<#T##font: Font?##Font?#>)
                Text("\(companyModel.desc)")
                    .foregroundColor(.white)
            }
        }
    }
}

struct BrandDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BrandDetailView(companyModel: CompanyDataModelList.mList[0])
    }
}
