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

    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(title)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .multilineTextAlignment(.leading)
                .fixedSize(horizontal: false, vertical: true)
                .frame(width: UIScreen.main.bounds.width*0.65, height: 105, alignment: .leading)
                .padding()
               
            Text("\(description)")
                .fixedSize(horizontal: false, vertical: true)
                .font(.caption)
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()
            
            
            ScrollView{
                VStack{
                    ForEach(bank.difficulties, id: \.self) { diff    in
                        OptionButtonView(parametro: diff)
                    }
                    NewOptionButtonView(text: "Outra dificuldade")
                }
              
            }.frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .padding()
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

struct MainDifficulties_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MainDifficultiesView()
                .previewDevice("iPhone SE (2nd generation)")
            MainDifficultiesView()
                .previewDevice("iPhone 11")
            MainDifficultiesView()
                .previewDevice("iPhone 8")
            MainDifficultiesView()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
