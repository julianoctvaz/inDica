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
    var description = "Queremos te apresentar alguém para te ajudar a arranjar um emprego. Alguém real como você, que passou pelas mesmas situações e agora está cheia de dicas para dar."
    var description2 = "Para isso, seria ótimo te conhecer..."
    
    @EnvironmentObject var user: UserSettings //deixar essa classe global com os dados do usario
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(title)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .frame(width: UIScreen.main.bounds.width*0.65, height: 105, alignment: .leading)
                .padding()
            
            
            Text("\(description)")
                .fixedSize(horizontal: false, vertical: true)
                .font(.caption)
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()
            
            
            Text("\(description2)")
                .fixedSize(horizontal: false, vertical: true)
                .font(.caption)
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()
            
            
            Text("\(nameAsk)")
                .fixedSize(horizontal: false, vertical: true)
                .font(.callout)
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()
            
            Button(action: {
                
            }) {
                TextField("Digite seu nome", text: $user.username)
                    .disableAutocorrection(true)
            }
            .padding()
            .foregroundColor(.black)
            .background(Color.init(red: 0.8902, green: 0.9059, blue: 0.97255)) // Roxo mais claro 3E7F8 = (227, 231, 248))
            .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.1, alignment: .center)
                    
            Spacer()
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrow.right")
                        .padding(UIScreen.main.bounds.height*0.02)
                })
                .foregroundColor(.white)
                .background(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                .cornerRadius(100)
            }
            .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.1, alignment: .center)
            .padding(.leading)
            
            Spacer()
        }
        
      
    }
    
    
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            WelcomeView().environmentObject(UserSettings())
                .previewDevice("iPhone SE (2nd generation)")
            WelcomeView().environmentObject(UserSettings())
                .previewDevice("iPhone 11")
            WelcomeView().environmentObject(UserSettings())
                .previewDevice("iPhone 8")
            WelcomeView().environmentObject(UserSettings())
                .previewDevice("iPhone 11 Pro")
        }
    }
}

