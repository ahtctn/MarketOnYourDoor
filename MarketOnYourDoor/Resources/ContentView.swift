//
//  ContentView.swift
//  MarketOnYourDoor
//
//  Created by Ahmet Ali ÇETİN on 5.06.2023.
//
import SwiftUI
import Lottie

struct ContentView: View {
    /// View Properties
    @State private var isLaunchScreenEnd: Bool = false
    @State private var selectedTab: EnumTab = .Home
    @State private var rotationValue: Double = 0.1
    @State private var showSideMenu: Bool = false
    
    var sideMenuModel: SideMenuModel
    
    var body: some View {
        VStack {
            if self.isLaunchScreenEnd {
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
                            
                            BrandsView()
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("Brands")
                                .tabItem {
                                    Image(systemName: "briefcase")
                                    Text("Markalar")
                                }
                                .tag(EnumTab.Brands)
                            
                            ProductsView()
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("Basket")
                                .tabItem {
                                    Image(systemName: "basket")
                                    Text("Sepetim")
                                }
                                .tag(EnumTab.Products)
                            
                            ListsView()
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("Lists")
                                .tabItem {
                                    Image(systemName: "heart")
                                    Text("Listelerim")
                                }
                                .tag(EnumTab.MyList)
                            
                            SettingsView()
                                .navigationBarTitleDisplayMode(.inline)
                                .navigationTitle("Settings")
                                .tabItem {
                                    Image(systemName: "gear")
                                    Text("Ayarlar")
                                }
                                .tag(EnumTab.Settings)
                            
                            
                        }
                        .background(Color.black)
                        .accentColor(.black)
                        .toolbar {
                            ToolbarItemGroup(placement: .navigationBarLeading) {
                                //MARK: SIDE MENU BUTTON
                                Button {
                                    print("side menu button")
                                    showSideMenu.toggle()
                                    
                                } label: {
                                    if showSideMenu {
                                        Image(systemName: "xmark")
                                            .tint(.white)
                                    } else {
                                        Image(systemName: "line.3.horizontal")
                                            .tint(.white)
                                        
                                    }
                                }
                                AppLogoView()
                            }
                            
                            ToolbarItemGroup(placement: .navigationBarTrailing) {
                                //MARK: NOTIFICATION BUTTON
                                Button {
                                    print("right bar button item tapped")
                                } label: {
                                    Image(systemName: "bell")
                                        .tint(.white)
                                }
                                //MARK: ACCOUNT BUTTON
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
                                .offset(x: showSideMenu ? 0 : -UIScreen.main.bounds.width)
                                .animation(.easeIn(duration: 0.3), value: showSideMenu)
                            
                        }
                        .background(Color.black.opacity(showSideMenu ? 0.55 : 0))
                    }
                }
            } else {
                LootieAnimationView(name: "launchScreenAnimation", loopMode: .loop)
            }
        } .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
                withAnimation {
                    self.isLaunchScreenEnd = true
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

