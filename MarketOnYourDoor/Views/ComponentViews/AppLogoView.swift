//
//  AppLogoView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 12.06.2023.
//

import SwiftUI

struct AppLogoView: View {
    var body: some View {
        Image("logo")
            .resizable()
            .frame(width: 35, height: 35, alignment: .center)
            .scaledToFill()
            .cornerRadius(10)
            .padding(.bottom, 10)
            .shadow(color: .black, radius: 5, x: 0, y: 3)
    }
}

struct AppLogoView_Previews: PreviewProvider {
    static var previews: some View {
        AppLogoView()
    }
}
