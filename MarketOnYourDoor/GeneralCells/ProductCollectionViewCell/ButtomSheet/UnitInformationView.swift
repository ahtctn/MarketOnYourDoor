//
//  UnitInformationView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct UnitInformationView: View {
    var body: some View {
        ZStack {
            UnitInformationRectangleView()
            HStack(alignment: .center, spacing: 2) {
                VStack(alignment: .center, spacing: 3) {
                    Text("Adet")
                        .font(.system(size: 12)).bold()
                    Text("1KOL")
                        .font(.system(size: 9))
                }
                    
            }
            
        }
        
    }
}

struct UnitInformationView_Previews: PreviewProvider {
    static var previews: some View {
        UnitInformationView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
