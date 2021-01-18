//
//  FavoriteMentorsCollectionCell.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct FavoriteMentorsCollectionCell: View {
    
    var job: String
    var company: String
    
    var body: some View {
        VStack{
            Image("Tereza")
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width*0.2, height: UIScreen.main.bounds.width*0.2, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .clipShape(RoundedRectangle(cornerRadius: 8.0))
                .padding()
            
            Text("\(job)")
                .font(.custom("Raleway", size:20))
                .foregroundColor(.gray)
            
            Text("\(company)")
                .font(.custom("Raleway", size:12))
                .foregroundColor(.gray)
                .padding(.top, UIScreen.main.bounds.height*0.001)
        }
        
        
    }
}

struct FavoriteMentorsCollectionCell_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteMentorsCollectionCell(job: "Designer", company: "Avantia")
    }
}
