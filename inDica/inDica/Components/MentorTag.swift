//
//  MentorTag.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct MentorTag: View {
    
    var text: String
    
    var body: some View {
        Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
            Text("\(text)")
        }).frame(width: 105, height: 16, alignment: .center)
        .padding(.top, UIScreen.main.bounds.height*0.005)
        .padding(.bottom, UIScreen.main.bounds.height*0.005)
        .padding(.leading, UIScreen.main.bounds.width*0.01)
        .padding(.trailing, UIScreen.main.bounds.width*0.01)
        .foregroundColor(.white)
        .background(Color.init(red: 0.3451, green: 0.337255, blue: 0.84))
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
    }
}

struct MentorTag_Previews: PreviewProvider {
    static var previews: some View {
        MentorTag(text: "Defaut")
    }
}
