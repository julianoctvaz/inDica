//
//  NewOptionButtonView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct NewOptionButtonView: View {
    
    var text = "Uma mulher cisgênero"
    
    var body: some View {
        Button(action: {
            
        }) {
            HStack{
                Image(systemName: "plus")
                    .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84))
                // Roxo mais escuro: 5856D6 = (88, 86, 214))))
                TextField(text, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
            }
        }
        .padding()
        .background(Color.init(red: 0.8902, green: 0.9059, blue: 0.97255)) // Roxo mais claro 3E7F8 = (227, 231, 248)
        .cornerRadius(10)
    }
}

struct NewOptionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewOptionButtonView()
    }
}
