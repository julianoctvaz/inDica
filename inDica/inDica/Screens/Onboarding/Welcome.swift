//
//  Welcome.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//


import SwiftUI

struct WelcomeView: View {
    
    var title = "Boas-vindas!"
    var nameAsk = "Como você se chama?"
    var description = "Queremos te apresentar alguém para te ajudar a arranjar um emprego. Alguém real como você, que passou pelas mesmas situações e agora está cheia de dicas para dar!"
    var description2 = "Para isso, seria ótimo te conhecer..."
    
    @State var username:String = ""
    @State var showOnboardingGender_Toggle = false
    
    @EnvironmentObject var user: UserSettings //deixar essa classe global com os dados do usario
    
    var body: some View {
        VStack(alignment: .leading) {



            Text("\(title)")
                .font(.custom("Raleway", size:28))
                .foregroundColor(Color.white)
                .bold()
                .frame(width: UIScreen.main.bounds.width*0.65, height: 105, alignment: .leading)
                .padding()


            Text("\(description)")
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .font(.custom("Raleway", size:15.5))
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()


            Text("\(description2)")
                .foregroundColor(Color.white)
                .fixedSize(horizontal: false, vertical: true)
                .font(.custom("Raleway", size:15.5))
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()


            Text("\(nameAsk)")
                .foregroundColor(Color.white)
                .bold()
                .fixedSize(horizontal: false, vertical: true)
                .font(.custom("Raleway", size:17))
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()

            Button(action: {

                //                user.username  = username

            }) {
                ZStack(){
                    Rectangle()
                        .frame(width: UIScreen.main.bounds.width*0.6, height: 15, alignment: .leading)
                        .padding(.top, UIScreen.main.bounds.height*0.015)
                        .padding(.bottom, UIScreen.main.bounds.height*0.015)
                        .padding(.leading, UIScreen.main.bounds.width*0.03)
                        .background(Color.init(red: 0.8902, green: 0.9059, blue: 0.97255)) // Roxo mais claro 3E7F8 = (227, 231, 248)
                        .cornerRadius(5)
                    TextField("Digite seu nome", text: $username)
                        .disableAutocorrection(true)
                        .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84))



                        .padding()
                        .foregroundColor(.white)
                        .background(Color.init(red: 0.8902, green: 0.9059, blue: 0.97255)) // Roxo mais claro 3E7F8 = (227, 231, 248))
                        .cornerRadius(5)
                        .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.1, alignment: .center)

                }}
            Spacer()

            HStack(alignment: .center){
                Spacer()
                Button(
                    action: {
                        self.showOnboardingGender_Toggle = true
                    },
                    label: {
                        Image(systemName: "arrow.right")
                            .padding(UIScreen.main.bounds.height*0.02)
                    })
                    .foregroundColor(Color.purple)
                    .background(Color.white) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                    .cornerRadius(100)
            }
            .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.1, alignment: .center)
            .padding(.leading)
            .fullScreenCover(isPresented: $showOnboardingGender_Toggle) {
                //                if(user.username != "Juliano"){
                OnboardingGenderView()
                //                }
            }


            Spacer()
        }
        .background(
            Image("fundoBoasVindas")

                //                .resizable()
                //                .scaledToFill()
                //                .frame(alignment: .leading)
                .edgesIgnoringSafeArea(.all)
            //            .ignoresSafeArea()


        )

        
      
    }
    
    
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeView()
                .previewDevice("iPhone 11")
//            WelcomeView().environmentObject(UserSettings())
//                .previewDevice("iPhone 11")
//            WelcomeView().environmentObject(UserSettings())
//                .previewDevice("iPhone 8")
//            WelcomeView().environmentObject(UserSettings())
//                .previewDevice("iPhone 11 Pro")
        }
    }
}


