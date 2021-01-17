//
//  OptionButtonView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct OptionButtonView: View {
    var body: some View {
        Button(action: {}) {
            Text("Uma mulher cisgênero")
        }
        .frame(width: UIScreen.main.bounds.width*0.7, height: 20, alignment: .leading)
        .padding(.top, UIScreen.main.bounds.height*0.015)
        .padding(.bottom, UIScreen.main.bounds.height*0.015)
        .padding(.leading, UIScreen.main.bounds.width*0.05)
        
        .foregroundColor(.white)
        .background(Color.purple)
        .cornerRadius(30)

    }
}

struct OptionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OptionButtonView()
    }
}
