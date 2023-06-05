//
//  RectangleView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct RectangleView: View {
    var body: some View {
        Rectangle()
            .stroke(Color.rectangleLineColor, lineWidth: 2.0)
            .frame(width: UIScreen.main.bounds.width * 0.5, height: UIScreen.main.bounds.height * 0.45, alignment: .center)
            .cornerRadius(5)
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
