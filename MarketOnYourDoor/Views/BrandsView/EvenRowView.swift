//
//  EvenRowView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 12.06.2023.
//
import SwiftUI

struct EvenRowView: View {
    let companyModel: CompanyModel
    
    var body: some View {
        ZStack {
            HStack {
                AsyncImage(url: URL(string: companyModel.logoUrl), placeholder: {
                    Rectangle().foregroundColor(Color.black.opacity(0.5))
                })
                .aspectRatio(contentMode: .fill)
                .frame(width: (UIScreen.main.bounds.size.height * 0.1), height: (UIScreen.main.bounds.size.height * 0.1))
                .cornerRadius(10)
                .padding(.leading, 15)
                .shadow(color: .black, radius: 3, x: 0, y: 3)
                Spacer()
                VStack(alignment: .leading, spacing: 10) {
                    Text(companyModel.name)
                        .font(.system(size: 20, weight: .bold))
                        .padding(.trailing, 15)
                    Text(companyModel.desc)
                        .font(.system(size: 15, weight: .regular, design: .default))
                        .foregroundColor(.secondary)
                        .lineLimit(1)
                        .padding(.trailing, 15)
                }
                
                
            }
        }.background(companyModel.color.opacity(0.3))
            .cornerRadius(20)
    }
}

struct EvenRowView_Previews: PreviewProvider {
    static var previews: some View {
        EvenRowView(companyModel: CompanyDataModelList.mList[0])
            .previewLayout(.sizeThatFits)
        //.padding()
    }
}
