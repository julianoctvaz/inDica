//
//  MentorProfile.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct MentorProfile: View {
    var name: String
    var job: String
    var city: String
    
    @State var backButton_Toggle = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack{
            
            
            
            ZStack{
                Image("bar")
                    .clipShape(
                        RoundedRectangle(cornerRadius: 8.0))
                    .edgesIgnoringSafeArea(.top)
                    .position(x: UIScreen.main.bounds.width/2, y: 70)
                    .frame(width: UIScreen.main.bounds.width, height: 132, alignment: .center)
                    .offset(x: 0, y: -20)
                
                HStack{
                    Button(
                        action: {
                            self.backButton_Toggle.toggle()
                            print("back")
                            presentationMode.wrappedValue.dismiss()
                        },
                        label: {
                            Image(systemName: "chevron.backward")
                                .padding(UIScreen.main.bounds.height*0.02)
                        })
                        .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                        .cornerRadius(100)
                        .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Spacer()
                    
                    Button(
                        action: {
                            print("fav")
                        },
                        label: {
                            Image("fav")
                                .padding(UIScreen.main.bounds.height*0.02)
                        })
                        .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                        .cornerRadius(100)
                        .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                }
            }
            
            Image("Tereza")
                .resizable()
                .scaledToFill()
                .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .frame(width: 300, height: 180, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .cornerRadius(8.0, corners: [.topLeft, .topRight, .bottomLeft, .bottomRight])
                .shadow(radius: 5)
            Text("\(name)")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
            Text("\(job)")
                .font(.title2)
                .foregroundColor(.gray)
                .padding(.top, UIScreen.main.bounds.height*0.005)
            
            Text("\(city)")
                .font(.caption)
                .padding(.bottom, UIScreen.main.bounds.height*0.01)
            
            VStack{
                Text("Posso ajudar em:")
                    .font(.headline)
                    .frame(width: UIScreen.main.bounds.width*0.9, height: 25, alignment: .leading)
                
                HStack{
                    MentorTag(text: "Currículo")
                    MentorTag(text: "Organização")
                    MentorTag(text: "Capacitação")
                }
                HStack{
                    MentorTag(text: "Dicas Gerais")
                    MentorTag(text: "Portfólio")
                }
            }.frame(alignment: .center)
            
            ScrollView(.vertical){
                Text("Minha breve história")
                    .font(.title3)
                    .frame(width: UIScreen.main.bounds.width*0.9, height: 10, alignment: .leading)
                    .padding()
                
                Text("Eu estava com a vida um pouco parada, procurava serviços mas não conseguia conciliar minha formação com um emprego. Uma colega, sabendo disso, me ajudou a começar como corretora. A flexibilidade foi o que me motivou.")
                    .frame(width: UIScreen.main.bounds.width*0.9, height: 120, alignment: .leading)
                    .multilineTextAlignment(/*@START_MENU_TOKEN@*/.leading/*@END_MENU_TOKEN@*/)
                    .padding(.bottom, UIScreen.main.bounds.height*0.001)
                
                Text("Entre em contato!")
                    .frame(width: UIScreen.main.bounds.width*0.9, height: 15, alignment: .leading)
                
                Image("contact")
                    .resizable()
                    .scaledToFill()
                    .frame(width: UIScreen.main.bounds.width*0.8, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            
            
            
        }
    }
}

struct MentorProfile_Previews: PreviewProvider {
    static var previews: some View {
        MentorProfile(name: "Tereza", job: "Corretora de Imóveis", city: "Recife - PE")
    }
}