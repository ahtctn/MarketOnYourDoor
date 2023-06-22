//
//  ProductSupplementGroups.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 22.06.2023.
//

import SwiftUI

struct ProductSupplementGroups: View {
    
    @State private var productSupplementGroupsIndex: ProductSupplementGroup = .group2
    
    var body: some View {
        Picker(selection: $productSupplementGroupsIndex, label: Text("Ek")) {
            ForEach(ProductSupplementGroup.allCases, id: \.self) { group in
                Text(group.labelText).tag(group)
            }
        }
    }
}

struct ProductSupplementGroups_Previews: PreviewProvider {
    static var previews: some View {
        ProductSupplementGroups()
    }
}
