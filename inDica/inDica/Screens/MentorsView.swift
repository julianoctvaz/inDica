//
//  MentorsView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct MentorsView: View {
    
    var array = ["Tereza", "Dandara"]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Image("searchBar")
                .clipShape(
            RoundedRectangle(cornerRadius: 8.0))
                .edgesIgnoringSafeArea(.top)
                .frame(width: UIScreen.main.bounds.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x:0, y: -20)


            Text("Gente como você")
                .font(.title2)
                .padding(.leading, UIScreen.main.bounds.width*0.05)
                .frame(width: UIScreen.main.bounds.width*0.6, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.array, id: \.self) { mentor in
                        MentorCollectionCell(name: mentor)
                        }
                    }
            }
            
            Text("Perfis favoritados")
                .font(.title3)
                .padding(.leading, UIScreen.main.bounds.width*0.05)
                .frame(width: UIScreen.main.bounds.width*0.8, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.array, id: \.self) { mentor in
                        
                        FavoriteMentorsCollectionCell(job: "Corretora", company: "Avantia")
                        
                    }
                }
            }
            .padding()
        }
        .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        
        
    }
}

struct MentorsView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            MentorsView()
                        .previewDevice("iPhone SE (2nd generation)")
            MentorsView()
                        .previewDevice("iPhone 11")
            MentorsView()
                        .previewDevice("iPhone 8")
            MentorsView()
                        .previewDevice("iPhone 11 Pro")
                }
    }
}
