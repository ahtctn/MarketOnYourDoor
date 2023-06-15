//
//  TextFieldView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 15.06.2023.
//

import SwiftUI

struct TextFieldView: View {
    @Binding var text: String
    
    let placeholder: String
    let keyboardType: UIKeyboardType
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            
            TextField(placeholder, text: $text)
                .keyboardType(keyboardType)
                .padding()
                .background(
                Capsule()
                    .stroke(Color.secondaryCustomBlueColor, lineWidth: 3)
                    .background(Color.buttonBlueColor).opacity(0.3)
                    .cornerRadius(30)
                )
            
        }
        .padding(.leading, 30)
        .padding(.trailing, 30)
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(text: .constant(""), placeholder: "E- mail", keyboardType: .emailAddress)
        
    }
}
