//
//  SideMenuListProductsButton.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 10.06.2023.
//

import SwiftUI

struct SideMenuListProductsButton: View {
    var body: some View {
        VStack {
            Spacer()
            Button {
                // "Ürünleri Listele" Button'ına tıklandığında yapılacak işlemler
                print("Ürünleri Listele Button Tapped")
            } label: {
                Text("ÜRÜNLERİ LİSTELE")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding(.leading, 70)
                    .padding(.trailing, 70)
                    .padding(.top, 20)
                    .padding(.bottom, 20)
                    .foregroundColor(Color.white)
                    .background(Color.buttonBlueColor)
                    .cornerRadius(20)
                
            }
        }
    }
}

struct SideMenuListProductsButton_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuListProductsButton()
    }
}
