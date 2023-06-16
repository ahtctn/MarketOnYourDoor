//
//  MarketOnYourDoorApp.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI
import Lottie

@main
struct MarketOnYourDoorApp: App {
    
    @StateObject private var userAuth = UserAuth()
    @State private var isLaunchScreenEnd: Bool = false
    
    var body: some Scene {
        WindowGroup {
            
            if userAuth.isRegistered {
                ContentView(companyModel: CompanyDataModelList.mList[0], sideMenuModel: SideMenuModelList.mSideMenuModelList[0])
                    .environmentObject(userAuth)
            } else {
                if self.isLaunchScreenEnd {
                    RegisterScreen()
                        .environmentObject(userAuth)
                } else {
                    LootieAnimationView(name: "launchScreenAnimation", loopMode: .loop)
                        .edgesIgnoringSafeArea(.all)
                        .onAppear {
                            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                                withAnimation {
                                    self.isLaunchScreenEnd = true
                                }
                            }
                        }
                        .environmentObject(userAuth)
                }
            }
            
        }
    }
}
