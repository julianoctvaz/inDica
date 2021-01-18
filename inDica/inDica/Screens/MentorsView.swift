//
//  MentorsView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

class Mentor: Identifiable{
    
    var name: String
    var city: String
    var job: String
    
    init(name: String, job: String, city: String){
        self.name = name
        self.job = job
        self.city = city
    }
}

struct MentorsView: View {
    
    @State var showDetails_Toggle = false
    
    var array: [Mentor] = [Mentor(name: "Tereza", job: "Corretor de Imóveis", city: "Recife - PE"), Mentor(name: "Leila", job: "Cabeleireira", city: "Chapada - BA")]
    
    var body: some View {
        VStack(alignment: .leading) {
            
            Image("searchBar")
                .clipShape(
                    RoundedRectangle(cornerRadius: 8.0))
                .edgesIgnoringSafeArea(.top)
                .frame(width: UIScreen.main.bounds.width, height: 100, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .offset(x:0, y: -45)
            
            Text("Pessoas parecidas com você")
                .font(.custom("Raleway", size:22))
                .padding(.leading, UIScreen.main.bounds.width*0.05)
                .frame(width: UIScreen.main.bounds.width*0.9, alignment: .leading)
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(alignment: .top, spacing: 0) {
                    ForEach(self.array) { mentor in
                            MentorCollectionCell(name: mentor.name, job: mentor.job, city: mentor.city)
                                .onTapGesture {
                                    print("Cliquei no \(mentor.name)")
                                    self.showDetails_Toggle.toggle()
                                }.fullScreenCover(isPresented:  $showDetails_Toggle){ MentorProfile(name: mentor.name, job: mentor.job, city: mentor.city)
                                    
                                }
                    }
                }
            }
                
                
                Text("Perfis favoritados")
                    .font(.title3)
                    .padding(.leading, UIScreen.main.bounds.width*0.05)
                    .frame(width: UIScreen.main.bounds.width*0.8, alignment: .leading)
                
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0) {
                        ForEach(self.array) { mentor in
                            
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
