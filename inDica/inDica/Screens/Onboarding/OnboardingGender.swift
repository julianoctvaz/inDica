//
//  OnboardingView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct OnboardingGenderView: View {
    
    var name = "Dandara"
    var description = "Eu sou..."
    @StateObject var bank = DataModel() //fica so pro escopo dessa view

    @State var showOnboardingBreedView_Toggle = false
    @State var botaoDeVoltarToggle = false
    
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            
            HStack(alignment: .center) {
                Spacer()
                Button(
                    action: {
                        self.botaoDeVoltarToggle.toggle()
                        presentationMode.wrappedValue.dismiss()
                    },
                    label: {
                        Image(systemName: "chevron.backward")
                            .padding(UIScreen.main.bounds.height*0.02)
                    })
                    .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                    .cornerRadius(100)
            }
            .frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.height*0.1, alignment: .center)

        
    
            
            Text("Nos conta mais\nsobre você,\n\(name)?")
                .font(.title)
                .bold()
                .frame(width: UIScreen.main.bounds.width*0.85, height: 105, alignment: .leading)
            //   .padding()
            Text("\(description)")
                .fixedSize(horizontal: false, vertical: true)
                .font(.body)
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding(.vertical)
            
            ScrollView(.vertical){
                ForEach(bank.genders, id: \.self) { gender in
                    OptionButtonView(parametro: gender)
                        .padding(.bottom)

                }
              
            }.frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
                            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Spacer()
                Button(
                    action: {
                        self.showOnboardingBreedView_Toggle = true
                    },
                    label: {
                    Image(systemName: "arrow.right")
                        .padding(UIScreen.main.bounds.height*0.02)
            })
            .foregroundColor(.white)
            .background(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
            .cornerRadius(100)
            })
            .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.1, alignment: .center)
            .padding(.leading)
            .fullScreenCover(isPresented: $showOnboardingBreedView_Toggle) {
                //                if(user.username != "Juliano"){
                OnboardingBreedView()
                //                }
            }
        })
    }
    
}

struct OnboardingGenderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingGenderView()
                .previewDevice("iPhone 11")
            OnboardingGenderView()
                        .previewDevice("iPhone 11")
            OnboardingGenderView()
                        .previewDevice("iPhone 8")
            OnboardingGenderView()
                        .previewDevice("iPhone 11 Pro")
                }
    }
}
