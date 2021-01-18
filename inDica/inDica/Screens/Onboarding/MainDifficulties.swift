//
//  MainDifficulties.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct MainDifficultiesView: View {
    
    var title = "E quais são suas principais dificuldades para arranjar emprego?"
    var description = "Acredito que..."
    @StateObject var bank = DataModel()
    @State var showContentView_Toggle = false
    @State var botaoDeVoltarToggle = false
    
    @Environment(\.presentationMode) var presentationMode

    var body: some View {
        VStack(alignment: .leading) {

            HStack(alignment: .center) {
                Spacer()
                Button(
                    action: {
                        self.botaoDeVoltarToggle.toggle()
                        presentationMode.wrappedValue.dismiss()
                    },
                    label: {
                        Image(systemName: "chevron.backward")
                            .padding()
                    })
                    .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                    .cornerRadius(100)
            }
            .frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.height*0.1, alignment: .center)


            Text("\(title)")
                .font(.custom("Raleway", size:28))
                .bold()
                .frame(width: UIScreen.main.bounds.width*0.85, height: 105, alignment: .leading)
            //   .padding()

            Text("\(description)")
                .fixedSize(horizontal: false, vertical: true)
                .font(.custom("Raleway", size:17))
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding(.vertical)


            ScrollView{
                VStack{
                    ForEach(bank.difficulties, id: \.self) { diff    in
                        OptionButtonView(parametro: diff)
                            .padding(.bottom)
                    }
                    NewOptionButtonView(text: "Outra dificuldade")
                }

            }.frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.4, alignment: .center)
            .padding()
            HStack(alignment: .center){
                Spacer()
                Button(
                    action: {
                        self.showContentView_Toggle = true
                    },
                    label: {
                        Image(systemName: "arrow.right")
                            .padding(UIScreen.main.bounds.height*0.02)
                    })
                    .foregroundColor(.white)
                    .background(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                    .cornerRadius(100)
            }
            .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.1, alignment: .center)
            .padding(.leading)
            .fullScreenCover(isPresented: $showContentView_Toggle) {
                //                if(user.username != "Juliano"){
                YouView()
                //                }
            }

            Spacer()
        }
        
    }
}

struct MainDifficulties_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainDifficultiesView()
                .previewDevice("iPhone 11")
            MainDifficultiesView()
                .previewDevice("iPhone 11")
            MainDifficultiesView()
                .previewDevice("iPhone 8")
            MainDifficultiesView()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
