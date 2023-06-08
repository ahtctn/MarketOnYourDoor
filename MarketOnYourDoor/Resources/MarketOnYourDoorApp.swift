//
//  MarketOnYourDoorApp.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

@main
struct MarketOnYourDoorApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(sideMenuModel: SideMenuModelList.mSideMenuModelList[0])
        }
    }
}