//
//  OnboardingBreedView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

class BreedsModel: ObservableObject {
    @Published var breeds = ["Uma pessoa negra", "Uma pessoa indígena", "Uma pessoa branca", "Uma pessoa parda", "Eu nem sei..."]
}

struct OnboardingBreedView: View {
    
    var name = "Dandara"
    var description = "me vejo como..."
    @StateObject var bank = BreedsModel() //fica so pro escopo dessa view

    
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
                ForEach(bank.breeds, id: \.self) { breed in
                    OptionButtonView(parametro: breed)
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

struct OnboardingBreedView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingBreedView()
                        .previewDevice("iPhone SE (2nd generation)")
            OnboardingBreedView()
                        .previewDevice("iPhone 11")
            OnboardingBreedView()
                        .previewDevice("iPhone 8")
            OnboardingBreedView()
                        .previewDevice("iPhone 11 Pro")
                }
    }
}
