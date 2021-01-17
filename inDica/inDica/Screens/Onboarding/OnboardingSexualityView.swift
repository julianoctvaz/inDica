//
//  OnboardingSexualityView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct OnboardingSexualityView: View {
    var name = "Dandara"
    var description = "sou..."
    @StateObject var bank = DataModel() //fica so pro escopo dessa view

    @State var showOnboardingDeficiency_Toggle = false
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

            Text("Nos conte mais sobre você, \(name)!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .frame(width: UIScreen.main.bounds.width*0.65, height: 105, alignment: .leading)
                .padding()
            Text("\(description)")
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()
            
            ScrollView{
                ForEach(bank.sexualities, id: \.self) { sex in
                    OptionButtonView(parametro: sex)
                }
              
            }.frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
                            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Spacer()
                Button(
                    action: {
                        self.showOnboardingDeficiency_Toggle = true
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
            .fullScreenCover(isPresented: $showOnboardingDeficiency_Toggle) {
                //                if(user.username != "Juliano"){
                OnboardingDeficiencyView()
                //                }
            }
        })
    }
}

struct OnboardingSexualityView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingSexualityView()
                        .previewDevice("iPhone SE (2nd generation)")
            OnboardingSexualityView()
                        .previewDevice("iPhone 11")
            OnboardingSexualityView()
                        .previewDevice("iPhone 8")
            OnboardingSexualityView()
                        .previewDevice("iPhone 11 Pro")
                }
    }
}
