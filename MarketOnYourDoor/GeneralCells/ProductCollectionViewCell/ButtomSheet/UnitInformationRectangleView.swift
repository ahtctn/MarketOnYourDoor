//
//  UnitInformationRectangleView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct UnitInformationRectangleView: View {
    var body: some View {
        Rectangle()
            .stroke(Color.rectangleLineColor, lineWidth: 5)
            .frame(minWidth: 50, maxWidth: 75, minHeight: 50, maxHeight: 75, alignment: .center)
            .cornerRadius(5)
    }
}

struct UnitInformationRectangleView_Previews: PreviewProvider {
    static var previews: some View {
        UnitInformationRectangleView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
