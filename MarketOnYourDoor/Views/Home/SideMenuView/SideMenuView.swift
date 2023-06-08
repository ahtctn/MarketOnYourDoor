//
//  SideMenuView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 7.06.2023.
//

import SwiftUI

struct SideMenuView: View {
    
    let sideMenuModelRow: SideMenuModel
    @State private var isPresented: Bool = false
    @State private var isTextFieldVisible: Bool = false
    @State private var lowestTextEntered: String = ""
    @State private var highestTextEntered: String = ""
    
    var body: some View {
        
        ZStack {
            List {
                HStack(alignment: .center, spacing: 10) {
                    Text("Filtreleme")
                        .foregroundColor(.black)
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .padding(.top, 20)
                        
                    
                    Spacer()
                    
                    Button {
                        print("Temizle Button Tapped")
                    } label: {
                        Text("Temizle")
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .padding(.top, 20)
                            .foregroundColor(Color.buttonBlueColor)
                            
                    }
                }
                
                ForEach(SideMenuModelList.mSideMenuModelList.indices, id: \.self) { index in
                    Button(action: {
                        self.isPresented.toggle()
                    }, label: {
                        HStack(alignment: .center) {
                            VStack(alignment: .leading) {
                                Text(SideMenuModelList.mSideMenuModelList[index].titleSide)
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .bold, design: .default))
                                
                                Text(SideMenuModelList.mSideMenuModelList[index].subtitleSide)
                                    .foregroundColor(.secondary)
                                    .font(.system(size: 13, weight: .regular, design: .default))
                                    .lineLimit(1)
                                    .truncationMode(.tail)
                            }
                            Spacer()
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(Color.buttonBlueColor)
                                .frame(width: 24, height: 24)
                                .alignmentGuide(.trailing) { _ in
                                    CGFloat.infinity
                                }
                        }
//                        .sheet(isPresented: $isPresented) {
//                            DetailView(item: SideMenuModelList.mSideMenuModelList[index])
//                        }
                    })
                    .overlay {
                        GeometryReader { geometry in
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: geometry.size.width, height: 0)
                        }
                    }
                    .onTapGesture {
                        if index == 4 { // Check if it's the 5th cell
                            isTextFieldVisible.toggle() // Toggle the visibility of the TextField
                            print("En yüksek fiyat: \(highestTextEntered)\nEn düşük fiyat: \(lowestTextEntered)")
                        }
                    }
                    
                    if index == 4 && isTextFieldVisible { // Display the TextField for the 5th cell
                        VStack {
                            TextField("En düşük fiyat", text: $lowestTextEntered)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .keyboardType(UIKeyboardType.asciiCapableNumberPad)
                                .padding()
                                
                            
                            TextField("En yüksek fiyat", text: $highestTextEntered)
                                .keyboardType(UIKeyboardType.asciiCapableNumberPad)
                                .textFieldStyle(RoundedBorderTextFieldStyle())
                                .padding()
                            
                            Spacer()
                        }
                    }
                }
            }
            .frame(minWidth: 300, maxWidth: 350)
            .background(.white)
            
            VStack {
                Spacer()
                Button {
                    // "Ürünleri Listele" Button'ına tıklandığında yapılacak işlemler
                    print("Ürünleri Listele Button Tapped")
                } label: {
                    Text("ÜRÜNLERİ LİSTELE")
                        .font(.system(size: 20, weight: .bold, design: .default))
                        .padding(.leading, 70)
                        .padding(.trailing, 70)
                        .padding(.top, 20)
                        .padding(.bottom, 20)
                        .foregroundColor(Color.white)
                        .background(Color.buttonBlueColor)
                        .cornerRadius(20)
                    
                }
            }
        }
        .shadow(color: .black, radius: 5, x: 0, y: 3)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(sideMenuModelRow: SideMenuModelList.mSideMenuModelList[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
