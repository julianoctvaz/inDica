//
//  OptionsScrollView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct OptionsScrollView: View {
    var body: some View {
        ScrollView{
            OptionButtonView()
            OptionButtonView()
            OptionButtonView()
            OptionButtonView()
            OptionButtonView()
            OptionButtonView()
        }.frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.4, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        .padding()
            
    }
}

struct OptionsScrollView_Previews: PreviewProvider {
    static var previews: some View {
        OptionsScrollView()
    }
}
