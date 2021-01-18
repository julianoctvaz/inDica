//
//  OptionButtonView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct OptionButtonView: View {
    
    var parametro: String
    @State var clicado: Bool = false


    var body: some View {
        Button(action: {
            self.clicado.toggle()
        }) {
            Text("\(parametro)")
            //    .font(.footnote)
                .font(.custom("Raleway", size:13))


        }
        .frame(width: UIScreen.main.bounds.width*0.85, height: 15, alignment: .leading)
        .padding(.top, UIScreen.main.bounds.height*0.015)
        .padding(.bottom, UIScreen.main.bounds.height*0.015)
        .padding(.leading, UIScreen.main.bounds.width*0.03)
        .foregroundColor(.black)
        .background(!self.clicado ? Color.init(red: 0.93, green: 0.73, blue: 0.855) : Color.init(red: 0.851, green: 0.384, blue: 0.678))        .cornerRadius(5)

//        if clicado == true {
//            corr = 0.93
//            corg = 0.73
//            corb = 0.855
//        }
//
//        if clicado == false {
//            corr = 0.851
//            corg = 0.384
//            corb = 0.678
//        }


    }
}

struct OptionButtonView_Previews: PreviewProvider {
    static var previews: some View {
        OptionButtonView(parametro: "Default")
    }
}
