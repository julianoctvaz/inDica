//
//  OnboardingDeficiencyView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct OnboardingDeficiencyView: View {
    var name = "Dandara"
    var description = "e portadora de..."
    @StateObject var bank = DataModel() //fica so pro escopo dessa view

    @State var showFamilyPerCapitaIncome_Toggle = false
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
            
            ScrollView{
                VStack{
                    ForEach(bank.deficiencies, id: \.self) { deficiency    in
                        OptionButtonView(parametro: deficiency)
                            .padding(.bottom)
                    }
  //                  NewOptionButtonView(text: "Outra deficiência")
                }
              
            }.frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
                            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: /*@START_MENU_TOKEN@*/nil/*@END_MENU_TOKEN@*/, content: {
                Spacer()
                Button(
                    action: {
                        self.showFamilyPerCapitaIncome_Toggle = true
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
            .fullScreenCover(isPresented: $showFamilyPerCapitaIncome_Toggle) {
                //                if(user.username != "Juliano"){
                FamilyPerCapitaIncomeView()
                //                }
            }
        })
    }
}

struct OnboardingDeficiencyView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingDeficiencyView()
                        .previewDevice("iPhone SE (2nd generation)")
            OnboardingDeficiencyView()
                        .previewDevice("iPhone 11")
            OnboardingDeficiencyView()
                        .previewDevice("iPhone 8")
            OnboardingDeficiencyView()
                        .previewDevice("iPhone 11 Pro")
                }
    }
}
