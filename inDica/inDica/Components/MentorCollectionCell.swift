//
//  MentorCollectionCell.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct MentorCollectionCell: View {
    
    var name: String
    
    var body: some View {
        
        VStack(alignment: .center){
            Image("Tereza")
                .resizable()
                .scaledToFill()
//                .frame(width: UIScreen.main.bounds.width*0.35, height: UIScreen.main.bounds.width*0.35, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .frame(width: 240, height: 140, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(8.0, corners: [.topLeft, .topRight])
                
//            Divider()
//                .frame(width: UIScreen.main.bounds.width*0.5, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//                .padding(.leading)
//                .padding(.bottom)
//                .padding(.trailing)
        
            Text("\(name)")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Text("Corretora de Imóveis")
                .font(.title2)
                .foregroundColor(.gray)
                .padding(.top, UIScreen.main.bounds.height*0.005)
                .padding(.bottom, UIScreen.main.bounds.height*0.005)
            
            Text("Recife - PE")
                .font(.caption)
                .padding(.bottom, UIScreen.main.bounds.height*0.01)
        }
//        .padding()
        .clipShape(RoundedRectangle(cornerRadius: 8.0))
        .overlay(RoundedRectangle(cornerRadius: 8.0).stroke(Color.gray, lineWidth: 1))
        .padding(UIScreen.main.bounds.width*0.05)

    }

}

struct MentorCollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        MentorCollectionCell(name: "Tereza")
    }
}
