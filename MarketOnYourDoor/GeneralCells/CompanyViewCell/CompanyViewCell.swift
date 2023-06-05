//
//  CompanyViewCell.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct CompanyViewCell: View {
    var cellItem: CompanyModel
    
    var body: some View {
        VStack(spacing: 4) {
            AsyncImage(url: URL(string: cellItem.logoUrl)) {
                Rectangle().foregroundColor(Color.gray.opacity(1))
            }
            .aspectRatio(contentMode: .fill)
            .frame(width: (UIScreen.main.bounds.size.height * 0.1), height: (UIScreen.main.bounds.size.height * 0.1))
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            .padding(.leading, 15)
            
            Text(cellItem.name)
                .font(.system(size: 13))
                .foregroundColor(Color.headersTitleColor)
                .multilineTextAlignment(.center)
                .lineLimit(1)
                .padding(.leading, 15)
        }.padding(1)
    }
}

struct CompanyViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CompanyViewCell(cellItem: CompanyDataModelList.mList[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

