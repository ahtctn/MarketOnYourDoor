//
//  BrandDetailView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 12.06.2023.
//

import SwiftUI

struct BrandDetailView: View {
    let companyModel: CompanyModel
    @State private var isShowingProductsView = false
    
    var body: some View {
        
        ZStack {
            companyModel.color
                .opacity(1)
                .frame(width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.height, alignment: .center)
                .padding(.top, -50)
                .shadow(color: .black, radius: 3, x: 3, y: 0)
            VStack(alignment: .center, spacing: 20) {
                
                AsyncImage(url: URL(string: companyModel.logoUrl), placeholder: {
                    Rectangle().foregroundColor(Color.black.opacity(0.5))
                })
                .aspectRatio(contentMode: .fill)
                .frame(width: (UIScreen.main.bounds.size.height * 0.3), height: (UIScreen.main.bounds.size.height * 0.3))
                .cornerRadius(10)
                .shadow(color: .black, radius: 3, x: 0, y: 3)
                .padding(.top, -20)
                
                ZStack {
                    Color.white
                        .opacity(1)
                        .frame(width: UIScreen.main.bounds.size.width * 0.7, height: UIScreen.main.bounds.height * 0.1, alignment: .center)
                        .cornerRadius(20)
                        .shadow(color: .black, radius: 3, x: 3, y: 0)
                    VStack(alignment: .center, spacing: 5) {
                        Text("\(companyModel.name)")
                            .foregroundColor(.black)
                            .font(.system(size: 20, weight: .bold, design: .default))
                            .background(.white)
                        Text("\(companyModel.desc)")
                            .font(.system(size: 18, weight: .regular, design: .default))
                            .foregroundColor(.secondary)
                            .background(.white)
                    }
                }
                    
                
                if isShowingProductsView {
                        ProductsView(companyModel: companyModel)
                                .transition(.move(edge: .bottom))
                                .animation(.easeInOut)
                    } else {
                            Button("Ürünleri Göster") {
                                        withAnimation {
                                            isShowingProductsView.toggle()
                                        }
                                    }
                                    .foregroundColor(.white)
                                    .padding()
                                    .background(Color.black.opacity(0.5))
                                    .cornerRadius(10)
                                }
            }
        }
    }
}

struct BrandDetailView_Previews: PreviewProvider {
    static var previews: some View {
        BrandDetailView(companyModel: CompanyDataModelList.mList[0])
    }
}
