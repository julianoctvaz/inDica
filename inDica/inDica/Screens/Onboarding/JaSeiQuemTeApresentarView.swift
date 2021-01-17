//
//  JaSeiQuemTeApresentarView.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct JaSeiQuemTeApresentarView: View {
    
     @State var jaSeiQuemTeApresentarToggle = false
    
    var body: some View {
        
        VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            
            Button(action: {
                self.jaSeiQuemTeApresentarToggle.toggle()
                
            }) {
                Text("Vamos lá!")
                    .bold()
            }
            .frame(width: UIScreen.main.bounds.width*0.7, height: 20, alignment: .center)
            .padding(.top, UIScreen.main.bounds.height*0.015)
            .padding(.bottom, UIScreen.main.bounds.height*0.015)
            .padding(.leading, UIScreen.main.bounds.width*0.05)
            .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))))
            .background(Color.white) // Roxo mais claro 3E7F8 = (227, 231, 248)
            .cornerRadius(10)
            .shadow(radius:5)
            .fullScreenCover(isPresented: $jaSeiQuemTeApresentarToggle) {
                
                ContentView()
                
            }
            
            Spacer()
        }.background(
            Image("jaSeiQuemTeApresentar")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*1, alignment: .leading)
            )
            

        
    }
}

struct JaSeiQuemTeApresentarView_Previews: PreviewProvider {
    static var previews: some View {
        JaSeiQuemTeApresentarView()
    }
}
