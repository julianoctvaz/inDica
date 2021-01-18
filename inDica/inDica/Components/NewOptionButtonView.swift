//
//  NewOptionButtonView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct NewOptionButtonView: View {
    
    var text: String
    
    var body: some View {
        Button(action: {
            
        }) {
            HStack{
                TextField(text, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                    .padding(.leading, UIScreen.main.bounds.width*0.025)
                
                Image(systemName: "plus")
                    .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214))))
            }
        }
        .frame(width: UIScreen.main.bounds.width*0.85, height: 15, alignment: .leading)
        .padding(.top, UIScreen.main.bounds.height*0.015)
        .padding(.bottom, UIScreen.main.bounds.height*0.015)
        .padding(.leading, UIScreen.main.bounds.width*0.03)
        .foregroundColor(.black)
        .background(Color.init(red: 0.93, green: 0.73, blue: 0.855)) // Roxo mais claro 3E7F8 = (227, 231, 248)
        .cornerRadius(10)
    }
}

struct NewOptionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewOptionButtonView(text: "Outra Área")
    }
}
