//
//  AdetInformationView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 6.06.2023.
//

import SwiftUI

struct AdetInformationView: View {
    @State var selectedButton: ButtonType?
    var isSelected: Bool
    
    var body: some View {
        ZStack {
            UnitInformationRectangleView()
                .foregroundColor(isSelected ? .blue : .secondary)
            HStack(alignment: .center, spacing: 2) {
                VStack(alignment: .center, spacing: 3) {
                    Text("Adet")
                        .font(.system(size: 12)).bold()
                        .foregroundColor(isSelected ? .blue : .secondary)
                    Text("1x1")
                        .font(.system(size: 9))
                        .foregroundColor(isSelected ? .blue : .secondary)
                }
            }
        }
    }
}


struct AdetInformationView_Previews: PreviewProvider {
    static var previews: some View {
        AdetInformationView(isSelected: true)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
