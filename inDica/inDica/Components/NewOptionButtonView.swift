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
                TextField(text, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                    
            }
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.purple)
        .cornerRadius(10)
    }
}

struct NewOptionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        NewOptionButtonView()
    }
}
