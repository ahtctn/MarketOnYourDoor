//
//  LaunchScreenView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 8.06.2023.
//

import Foundation
import Lottie
import SwiftUI

struct LootieAnimationView: UIViewRepresentable {
    let name: String
    let loopMode: LottieLoopMode
    
    func makeUIView(context: Context) -> Lottie.LottieAnimationView {
        let animationView = LottieAnimationView(name: name)
        animationView.loopMode = loopMode
        animationView.play()
        return animationView
    }
    
    func updateUIView(_ uiView: Lottie.LottieAnimationView, context: Context) {
        
    }
}
