//
//  ExtraArgumentView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct ExtraArgumentView: View {
    var rowItem: ProductModel
    
    var body: some View {
        HStack(alignment: .center) {
            Text(String(rowItem.stockSituation ?? "Bir sorun var"))
                .font(.system(size: 11))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .background(
                    GeometryReader { geometry in
                        Rectangle()
                            .fill(Color.themeColor)
                            .frame(width: geometry.size.width + 10, height: 20, alignment: .center)
                            .cornerRadius(5)
                    }
                )
        }
    }
}

struct ExtraArgumentView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraArgumentView(rowItem: ProductModelList.mProductList[0].first!)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
