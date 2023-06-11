//
//  SideMenuHeaderTitles.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 10.06.2023.
//

import SwiftUI

struct SideMenuHeaderTitles: View {
    var body: some View {
        HStack(alignment: .center, spacing: 10) {
            Text("Filtreleme")
                .foregroundColor(.black)
                .font(.system(size: 20, weight: .bold, design: .default))
                .padding(.top, 20)
            
            Spacer()
            
            Button {
                print("Temizle Button Tapped")
            } label: {
                Text("Temizle")
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .padding(.top, 20)
                    .foregroundColor(Color.buttonBlueColor)
            }
        }
    }
}

struct SideMenuHeaderTitles_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuHeaderTitles()
    }
}
