//
//  StarredProductRates.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 22.06.2023.
//

import SwiftUI

struct StarredProductRates: View {
    
    @State private var starredProductPickerIndex: StarRating = .oneStar
    
    var body: some View {
        Picker(selection: $starredProductPickerIndex, label: Text("Derece")) {
            ForEach(StarRating.allCases, id: \.self) { group in
                Text(group.labelText).tag(group)
            }
        }
        .padding(.horizontal)
        .transition(.move(edge: .bottom))
    }
}

struct StarredProductRates_Previews: PreviewProvider {
    static var previews: some View {
        StarredProductRates()
    }
}
