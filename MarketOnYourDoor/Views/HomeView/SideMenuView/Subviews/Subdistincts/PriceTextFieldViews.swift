//
//  PriceTextFieldViews.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 22.06.2023.
//

import SwiftUI

struct PriceTextFieldViews: View {
    
    @Binding var lowestTextEntered: String
    @Binding var highestTextEntered: String
    @Binding var isTextFieldVisible: Bool
    
    var body: some View {
        VStack {
            TextField("En düşük fiyat", text: $lowestTextEntered)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(UIKeyboardType.asciiCapableNumberPad)
                .padding()
                .offset(y: isTextFieldVisible ? 0 : -100) // Animate the offset of the TextField
            
            TextField("En yüksek fiyat", text: $highestTextEntered)
                .keyboardType(UIKeyboardType.asciiCapableNumberPad)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .offset(y: isTextFieldVisible ? 0 : -100) // Animate the offset of the TextField
            
            if Int(lowestTextEntered) ?? 0 > Int(highestTextEntered) ?? 0 || Int(lowestTextEntered) ?? 0 == Int(highestTextEntered) ?? 0 {
                Text("En düşük fiyat en büyük fiyattan daha büyük olamaz")
                    .lineLimit(2)
                    .foregroundColor(Color.red)
                    .font(.system(size: 12, weight: .regular, design: .default))
                    .padding(.trailing)
            }
            
            Spacer()
        }
        .offset(y: isTextFieldVisible ? 0 : UIScreen.main.bounds.height + 100) // Set final offset for animation
        .onAppear {
            withAnimation(.easeInOut(duration: 2.0)) {
                isTextFieldVisible = true
            }
        }
        
        .onDisappear {
            withAnimation(.easeInOut(duration: 2.0)) {
                isTextFieldVisible = false
            }
        }
    }
}

struct PriceTextFieldViews_Previews: PreviewProvider {
    static var previews: some View {
        PriceTextFieldViews(lowestTextEntered: .constant("1000"), highestTextEntered: .constant("2000"), isTextFieldVisible: .constant(.random()))
    }
}
