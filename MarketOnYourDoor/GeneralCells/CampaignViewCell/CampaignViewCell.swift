//
//  CampaignViewCell.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct CampaignViewCell: View {
    var cellItem: CampaignModel
    
    var body: some View {
        AsyncImage(url: URL(string: cellItem.imageUrl)) {
            Rectangle().foregroundColor(Color.gray.opacity(0.3))
        }
        .aspectRatio(contentMode: ContentMode.fit)
        .frame(width: (UIScreen.main.bounds.size.height * 0.15)*2, height: (UIScreen.main.bounds.size.height * 0.15))
        .frame(minWidth: 150, maxWidth: 340, minHeight: 100, maxHeight: 170)
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .overlay(Rectangle().stroke(Color.white, lineWidth: 2))
        .padding(5)
    }
}

struct CampaignViewCell_Previews: PreviewProvider {
    static var previews: some View {
        CampaignViewCell(cellItem: CampaignDataModelList.mCampaignList[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
