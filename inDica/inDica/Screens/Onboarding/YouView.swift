//
//  YouView.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct YouView: View {
    
    @State var botaoDeVoltarToggle = false
    @State var jaSeiQuemTeApresentarToggle = false
//    @State private var message: Message? = nil
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment: .center){
            
            
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
                    .foregroundColor(Color.white) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                    .cornerRadius(100)
            }
            .frame(width: UIScreen.main.bounds.width*0.1, height: UIScreen.main.bounds.height*0.1, alignment: .center)
            .padding(.trailing, UIScreen.main.bounds.width*0.85)
            
        
            Spacer()
            Spacer()
            Spacer()
            Spacer()
          
          
            Button(action: {
                self.jaSeiQuemTeApresentarToggle.toggle()
                
            }) {
                Text("É isso mesmo")
                    .bold()
                    .font(.custom("Raleway", size:17))
                
            }
            .frame(width: UIScreen.main.bounds.width*0.7, height: 20, alignment: .center)
            .padding(.top, UIScreen.main.bounds.height*0.015)
            .padding(.bottom, UIScreen.main.bounds.height*0.015)
            .padding(.leading, UIScreen.main.bounds.width*0.05)
            .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))))
            .background(Color.init(red: 0.8902, green: 0.9059, blue: 0.97255)) // Roxo mais claro 3E7F8 = (227, 231, 248)
            .cornerRadius(10)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .fullScreenCover(isPresented: $jaSeiQuemTeApresentarToggle) {
    
                JaSeiQuemTeApresentarView()
                
            }
        
            
            
            Spacer()
            
            
        }
        .background(
            Image("conclusaoDadosVoce")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*1, alignment: .center)
                .edgesIgnoringSafeArea(.all)

        )
    }
}

struct YouView_Previews: PreviewProvider {
    static var previews: some View {
        YouView()
            .previewDevice("iPhone 11")
    }
}
