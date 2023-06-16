import SwiftUI

struct PresentationModeEnvironmentKey: EnvironmentKey {
    static let defaultValue: Binding<PresentationMode>? = nil
}

extension EnvironmentValues {
    var presentationMode: Binding<PresentationMode>? {
        get { self[PresentationModeEnvironmentKey.self] }
        set { self[PresentationModeEnvironmentKey.self] = newValue }
    }
}

struct RegisterScreen: View {
    @State private var name: String = ""
    @State private var surname: String = ""
    @State private var email: String = ""
    @State private var age: String = ""
    @State private var isShowingSignupScreen = false
    @State private var isRegistered = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        NavigationView {
            ZStack {
                VStack(alignment: .leading, spacing: 10) {
                    Spacer().frame(height: 40)
                    Text("Kayıt Ol")
                        .font(.system(size: 50, weight: .bold, design: .default))
                        .padding(.leading, 50)
                    VStack(alignment: .center, spacing: 20) {
                        Spacer().frame(height: 40)
                        
                        LootieAnimationView(name: "registerScreenAnimation", loopMode: .loop)
                            .opacity(0.9)
                            .frame(width: 100, height: 100, alignment: .center)
                        
                        Spacer().frame(height: 50)
                        TextFieldView(text: $name, placeholder: "Ad", keyboardType: .default)
                        TextFieldView(text: $surname, placeholder: "Soyad", keyboardType: .default)
                        TextFieldView(text: $email, placeholder: "Email", keyboardType: .default)
                        TextFieldView(text: $age, placeholder: "Yaş", keyboardType: .default)
                        
                        Button(action: {
                            // Handle registration logic here
                            isRegistered = true
                        }) {
                            Text("Kayıt Ol")
                                .font(.system(size: 30, weight: .bold, design: .default))
                                .foregroundColor(.white)
                        }
                        .buttonStyle(CustomButtonStyle())
                        .padding(.top, 50)
                        
                        Button(action: {
                            isShowingSignupScreen = true
                        }) {
                            Text("Zaten üye misiniz?")
                                .foregroundColor(Color.buttonBlueColor)
                        }
                        Spacer()
                    }
                }
                
                .fullScreenCover(isPresented: $isRegistered) {
                    ContentView(companyModel: CompanyDataModelList.mList[0], sideMenuModel: SideMenuModelList.mSideMenuModelList[0])
                }
                
                .fullScreenCover(isPresented: $isShowingSignupScreen) {
                    SignupScreen()
                }
                .environment(\.presentationMode, presentationMode)
            }
        }
        .navigationBarHidden(true)
        .navigationBarBackButtonHidden(true)
    }
}

struct RegisterScreen_Previews: PreviewProvider {
    static var previews: some View {
        RegisterScreen()
    }
}
