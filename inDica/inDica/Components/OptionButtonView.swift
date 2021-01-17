//
//  OptionButtonView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct OptionButtonView: View {
    
    var parametro: String
    
    var body: some View {
        Button(action: {}) {
            Text("\(parametro)")
                .font(.footnote)

        }
        .frame(width: UIScreen.main.bounds.width*0.85, height: 15, alignment: .leading)
        .padding(.top, UIScreen.main.bounds.height*0.015)
        .padding(.bottom, UIScreen.main.bounds.height*0.015)
        .padding(.leading, UIScreen.main.bounds.width*0.03)
        .foregroundColor(.black)
        .background(Color.init(red: 0.8902, green: 0.9059, blue: 0.97255)) // Roxo mais claro 3E7F8 = (227, 231, 248)
        .cornerRadius(5)

    }
}

struct OptionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OptionButtonView(parametro: "Default")
    }
}
