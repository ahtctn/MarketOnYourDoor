//
//  CustomButtonView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 15.06.2023.
//

import SwiftUI

struct CustomButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding(.top, 20)
            .padding(.bottom, 20)
            .padding(.leading, 100)
            .padding(.trailing, 100)
            
            .background(
                RoundedRectangle(cornerRadius: 30)
                    .strokeBorder(Color.secondaryCustomBlueColor, lineWidth: 3)
            )
            .foregroundColor(.white)
            .background(Color.buttonBlueColor)
            .cornerRadius(30)
    }
}
