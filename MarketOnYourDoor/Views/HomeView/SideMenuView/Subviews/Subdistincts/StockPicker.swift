//
//  StockPicker.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 22.06.2023.
//

import SwiftUI

struct StockPicker: View {

    @State private var stockPickerIndex: StockStatus = .onlyInStock
    
    var body: some View {
        Picker(selection: $stockPickerIndex, label: Text("Stok")) {
            ForEach(StockStatus.allCases, id: \.self) { group in
                Text(group.labelText).tag(group)
            }
        }
    }
}

struct StockPicker_Previews: PreviewProvider {
    static var previews: some View {
        StockPicker()
    }
}
