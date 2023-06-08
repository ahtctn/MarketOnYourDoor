//
//  SideMenuView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 7.06.2023.
//

import SwiftUI

struct SideMenuView: View {
    
    let sideMenuModelRow: SideMenuModel
    
    var body: some View {
        
        List {
            ForEach(SideMenuModelList.mSideMenuModelList) { item in
                HStack(alignment: .center) {
                    VStack(alignment: .leading) {
                        Text(item.titleSide)
                            .foregroundColor(.black)
                            .font(.system(size: 18, weight: .bold, design: .default))
                        
                        Text(item.subtitleSide)
                            .foregroundColor(.secondary)
                            .font(.system(size: 13, weight: .regular, design: .default))
                            .lineLimit(1) // Tek satırda sınırla
                            .truncationMode(.tail) // Eğer metin sınıra sığmazsa kırp
                    }
                    Spacer()
                    
                    Image(systemName: "arrow.right")
                        .foregroundColor(.blue)
                        .frame(width: 24, height: 24)
                        .alignmentGuide(.trailing) { _ in
                            CGFloat.infinity
                        }
                    
                }
                .overlay {
                    GeometryReader { geometry in
                        Rectangle()
                            .fill(Color.clear)
                            .frame(width: geometry.size.width, height: 0)
                    }
                }
                
            }
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
