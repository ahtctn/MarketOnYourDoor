//
//  ContentView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//
import SwiftUI

struct ContentView: View {
    /// View Properties
    @State private var selectedTab: EnumTab = .Home
    @State private var rotationValue: Double = 0.1
    @State private var showSideMenu: Bool = false
    var sideMenuModel: SideMenuModel
    
    var body: some View {
        NavigationView {
            ZStack {
                TabView(selection: $selectedTab) {
                    HomeView(mCompanyList: [CompanyModel]())
                        
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Home")
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Keşfet")
                        }
                        .tag(EnumTab.Home)
                    
                    ProductsView()
                        .navigationBarTitleDisplayMode(.inline)
                        .navigationTitle("Home")
                        .tabItem {
                            Image(systemName: "basket")
                            Text("Sepetim")
                        }
                        .tag(EnumTab.Products)
                }
                .background(Color.black)
                .accentColor(.black)
                .toolbar {
                    ToolbarItemGroup(placement: .navigationBarLeading) {
                        Button {
                            print("left bar button item tapped")
                            showSideMenu.toggle()
                            
                        } label: {
                            Image(systemName: "line.3.horizontal")
                                .tint(.white)
                        }
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 35, height: 35, alignment: .center)
                            .scaledToFill()
                            .cornerRadius(10)
                            .padding(.bottom, 10)
                            .shadow(color: .black, radius: 10, x: 0, y: 3)
                    }
                    
                    ToolbarItemGroup(placement: .navigationBarTrailing) {
                        Button {
                            print("right bar button item tapped")
                        } label: {
                            Image(systemName: "bell")
                                .tint(.white)
                        }
                        
                        Button {
                            print("My account button tapped")
                        } label: {
                            Image(systemName: "person")
                                .tint(.white)
                        }
                    }
                }
                
                GeometryReader { _ in
                    Spacer()
                    SideMenuView(sideMenuModelRow: sideMenuModel)
                        .offset(x: showSideMenu ? 0 : UIScreen.main.bounds.width)
                    
                }
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(sideMenuModel: SideMenuModelList.mSideMenuModelList[0])
    }
}

extension UINavigationController {
    override open func viewDidLoad() {
        super.viewDidLoad()

    let standard = UINavigationBarAppearance()
        standard.backgroundColor = UIColor(Color.themeColor) //When you scroll or you have title (small one)

    let compact = UINavigationBarAppearance()
    compact.backgroundColor = UIColor(Color.themeColor)  //compact-height

    let scrollEdge = UINavigationBarAppearance()
    scrollEdge.backgroundColor = UIColor(Color.themeColor)  //When you have large title

    navigationBar.standardAppearance = standard
    navigationBar.compactAppearance = compact
    navigationBar.scrollEdgeAppearance = scrollEdge
 }
}

