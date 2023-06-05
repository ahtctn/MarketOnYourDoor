//
//  ScrollableProductImageView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//

import SwiftUI

struct ScrollableProductImageView: View {
    
    var body: some View {
        VStack {
            TabView {
                ForEach(0..<5) { num in
                    AsyncImage(url: URL(string: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT4C9uK0aKifAP_AzqJ751RA5_7utMqagTz1A&usqp=CAU")) {
                        Rectangle().foregroundColor(Color.black.opacity(0.5))
                    }
                        .scaledToFill()
                        //.frame(width: 200, height: 200, alignment: .center)
                        .tag(num)
                    /*
                    Image("gofret\(num)")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200, height: 200, alignment: .center)
                        .tag(num)*/
                }
            }
            .tabViewStyle(PageTabViewStyle())
                .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
            //.frame(width: 200, height: 200)
            
            .onAppear {
                setupAppearance()
            }
        }
    }
    
    func setupAppearance() {
        UIPageControl.appearance().currentPageIndicatorTintColor = .systemBlue
    }
}

struct ScrollableProductImageView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollableProductImageView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

