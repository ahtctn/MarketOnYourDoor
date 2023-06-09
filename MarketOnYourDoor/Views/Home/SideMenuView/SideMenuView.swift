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
    
    @State private var isStockPickerVisible: Bool = false
    @State private var stockPickerIndex: Int = 0
    
    @State private var isStarredProductsPickerVisible: Bool = false
    @State private var starredProductPickerIndex: Int = 3
    
    @State private var lowestTextEntered: String = ""
    @State private var highestTextEntered: String = ""
    
    @State private var starText: String = ""
    
    let starPickerOptions = ["⭐️", "⭐️⭐️", "⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️", "⭐️⭐️⭐️⭐️⭐️"]
    
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

                    Button {
                        
                        switch index {
                        case 0:
                            withAnimation {
                                isStockPickerVisible.toggle()
                            }
                        case 1:
                            print("nothing happened")
                        case 2:
                            print("nothing happened")
                        case 3:
                            withAnimation {
                                isStarredProductsPickerVisible.toggle()
                            }
                        case 4:
                            withAnimation {
                                isTextFieldVisible.toggle()
                            }
                        default: print("nothing happened")
                        }
                        
                    } label: {
                        HStack(alignment: .center) {
                            VStack(alignment: .leading) {
                                Text(SideMenuModelList.mSideMenuModelList[index].titleSide)
                                    .foregroundColor(.black)
                                    .font(.system(size: 18, weight: .bold, design: .default))
                                
                                subtitleView(for: index)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "arrow.right")
                                .foregroundColor(Color.buttonBlueColor)
                                .frame(width: 24, height: 24)
                                .alignmentGuide(.trailing) { _ in
                                    CGFloat.infinity
                                }
                        }
                    }
                    .overlay {
                        GeometryReader { geometry in
                            Rectangle()
                                .fill(Color.clear)
                                .frame(width: geometry.size.width, height: 0)
                        }
                    }
                    if index == 0 && isStockPickerVisible {
                        Picker(selection: $stockPickerIndex) {
                            Text("Sadece Stokta Olanlar").tag(0)
                            Text("Stoktan Kalkanlar").tag(1)
                            Text("Yakında Stokta").tag(2)
                        } label: {
                            Text("Stok Durumu")
                        }
                    }
                    
                    if index == 3 && isStarredProductsPickerVisible {
                        Picker(selection: $starredProductPickerIndex, label: Text("Derece: ")) {
                            ForEach(starPickerOptions.indices, id: \.self) { index in
                                Text(starPickerOptions[index]).tag(index)
                            }
                        }
                        
                        .padding(.horizontal)
                        .transition(.move(edge: .bottom))
                        .animation(.easeInOut(duration: 0.2))
                    }
                    
                    if index == 4 && isTextFieldVisible { // Display the TextField for the 5th cell
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
    
    @ViewBuilder
    private func subtitleView(for index: Int) -> some View {
        if index == 4 && lowestTextEntered != "" && highestTextEntered != "" {
            Text("\(lowestTextEntered) ₺ - \(highestTextEntered) ₺")
                .foregroundColor(.secondary)
                .font(.system(size: 13, weight: .regular, design: .default))
                .lineLimit(1)
                .truncationMode(.tail)
        } else if index == 3 {
            VStack(alignment: .leading) {
                
                Text(getStarText())
                    .foregroundColor(.secondary)
                    .font(.system(size: 13, weight: .regular, design: .default))
                    .lineLimit(1)
                    .truncationMode(.tail)
            }
        } else {
            Text(SideMenuModelList.mSideMenuModelList[index].subtitleSide)
                .foregroundColor(.secondary)
                .font(.system(size: 13, weight: .regular, design: .default))
                .lineLimit(1)
                .truncationMode(.tail)
        }
    }
    
    private func getStarText() -> String {
        switch starPickerOptions[starredProductPickerIndex] {
            case "⭐️":
                return "Bir yıldız ve üstü ürünler"
            case "⭐️⭐️":
                return "İki yıldız ve üstü ürünler"
            case "⭐️⭐️⭐️":
                return "Üç yıldız ve üstü ürünler"
            case "⭐️⭐️⭐️⭐️":
                return "Dört yıldız ve üstü ürünler"
            case "⭐️⭐️⭐️⭐️⭐️":
                return "Beş yıldızlı ürünler"
            default:
                return "eneme"
            }
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView(sideMenuModelRow: SideMenuModelList.mSideMenuModelList[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
