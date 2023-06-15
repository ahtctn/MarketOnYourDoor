//
//  RegisterScreen.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 15.06.2023.
//

import SwiftUI

struct RegisterScreen: View {
    var body: some View {
        ZStack {
            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .center, spacing: 20) {
                    LootieAnimationView(name: "registerScreenAnimation", loopMode: .loop)
                        .opacity(0.8)
                }
            }
        }
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
