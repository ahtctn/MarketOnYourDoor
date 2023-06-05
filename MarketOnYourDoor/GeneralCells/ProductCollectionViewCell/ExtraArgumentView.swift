//
//  ExtraArgumentView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct ExtraArgumentView: View {
    var body: some View {
        HStack(alignment: .center) {
            Text("%10 indirim")
                .font(.system(size: 13))
                .fontWeight(.medium)
                .foregroundColor(.white)
                .background(
                    Rectangle().fill(.red)
                        .frame(width: 80, height: 20, alignment: .center)
                        .cornerRadius(5)
                )
        }
    }
}

struct ExtraArgumentView_Previews: PreviewProvider {
    static var previews: some View {
        ExtraArgumentView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
