//
//  SeachedAreaToWork.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct SeachedAreaToWorkView: View {

    var title = "Em qual área você se sente mais preparada?"
    var description = "Procuro emprego na área de..."
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Text("\(title)")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .frame(width: UIScreen.main.bounds.width*0.65, height: 105, alignment: .leading)
                .padding()
            
            
            Text("\(description)")
                .fixedSize(horizontal: false, vertical: true)
                .font(.caption)
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()
            
            
            OptionsScrollView()
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/){
                Spacer()
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "arrow.right")
                        .padding(UIScreen.main.bounds.height*0.02)
                })
                .foregroundColor(.white)
                .background(Color.purple)
                .cornerRadius(100)
            }
            .frame(width: UIScreen.main.bounds.width*0.8, height: UIScreen.main.bounds.height*0.1, alignment: .center)
            .padding(.leading)
            
            Spacer()
        }
        
    }
}

struct SeachedAreaToWork_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SeachedAreaToWorkView()
                .previewDevice("iPhone SE (2nd generation)")
            SeachedAreaToWorkView()
                .previewDevice("iPhone 11")
            SeachedAreaToWorkView()
                .previewDevice("iPhone 8")
            SeachedAreaToWorkView()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
