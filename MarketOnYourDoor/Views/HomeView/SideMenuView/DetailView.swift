//
//  DetailView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 8.06.2023.
//

import SwiftUI

struct DetailView: View {
    let item: SideMenuModel
    
    var body: some View {
        Text("\(item.titleSide)")
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(item: SideMenuModelList.mSideMenuModelList[0])
    }
}
