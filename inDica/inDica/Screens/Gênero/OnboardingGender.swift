//
//  OnboardingView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

class GendersModel: ObservableObject {
    @Published var genders = ["Uma mulher transgênero", "Uma mulher cisgênero", "Um homem transgênero", "Um homem cisgênero", "Não sou binário"]
}

struct OnboardingGenderView: View {
    
    var name = "Dandara"
    var description = "Eu sou..."
    @StateObject var bank = GendersModel() //fica so pro escopo dessa view

    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            Text("Nos conte mais sobre você, \(name)!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .frame(width: UIScreen.main.bounds.width*0.65, height: 105, alignment: .leading)
                .padding()
            Text("\(description)")
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()
            
            ScrollView{
                ForEach(bank.genders, id: \.self) { gender in
                    OptionButtonView(parametro: gender)
                }
              
            }.frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
                            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrow.right")
                        .padding(UIScreen.main.bounds.height*0.02)
            })
            .foregroundColor(.white)
            .background(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
            .cornerRadius(100)
            })
            .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.1, alignment: .center)
            .padding(.leading)
        })
    }
    
}

struct OnboardingGenderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingGenderView()
                        .previewDevice("iPhone SE (2nd generation)")
            OnboardingGenderView()
                        .previewDevice("iPhone 11")
            OnboardingGenderView()
                        .previewDevice("iPhone 8")
            OnboardingGenderView()
                        .previewDevice("iPhone 11 Pro")
                }
    }
}
