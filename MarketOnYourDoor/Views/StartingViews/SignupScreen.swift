//
//  SignupScreen.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 15.06.2023.
//

import SwiftUI

struct SignupScreen: View {
    @State private var email: String = ""
    @State private var password: String = ""
    var body: some View {
        ZStack {
            LootieAnimationView(name: "signupScreenBackgroundAnimation", loopMode: .loop)
            VStack(alignment: .center, spacing: 20) {
                VStack(alignment: .leading, spacing: 20) {
                    Spacer().frame(height: 200)
                    LootieAnimationView(name: "signupAnimations", loopMode: .loop)
                        .scaledToFit()
                        .frame(width: 50, height: 50, alignment: .leading)
                        .scaleEffect(0.35)
                        .opacity(0.8)
                    Spacer().frame(height: 50)
                    Text("Email")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .padding(.leading, 40)
                    TextFieldView(text: $email, placeholder: "Email", keyboardType: .default)
                        .textContentType(.password)
                    
                    Text("Password")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .padding(.leading, 40)
                    TextFieldView(text: $password, placeholder: "Password", keyboardType: .default)
                        .textContentType(.password)
                }
                
                
                Button {
                    
                } label: {
                    Text("Giriş Yap")
                        .font(.system(size: 30, weight: .bold, design: .default))
                        .foregroundColor(.white)
                }
                .buttonStyle(CustomButtonStyle())
                .padding(.top, 50)
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
        }
    }
}

struct SignupScreen_Previews: PreviewProvider {
    static var previews: some View {
        SignupScreen()
    }
}
