//
//  ProductGroups.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 22.06.2023.
//

import SwiftUI

struct ProductGroups: View {
    
    @State private var productGroupsIndex: ProductGroup = .group1
    
    var body: some View {
        Picker(selection: $productGroupsIndex, label: Text("Grup")) {
            ForEach(ProductGroup.allCases, id: \.self) { group in
                Text(group.labelText).tag(group)
            }
        }
    }
}

struct ProductGroups_Previews: PreviewProvider {
    static var previews: some View {
        ProductGroups()
    }
}
