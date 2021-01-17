//
//  VoceView.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct VoceView: View {
    
   @State var paraTelaDeEditarToggle =  false
   @State var paraYouViewToggle =  false
    
    var body: some View {
        VStack(alignment: .center){
            
            Spacer()
            Spacer()
            Spacer()
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {
                
                Spacer()
                Spacer()
                Spacer()
                
                Button(
                    action: {
                        self.paraTelaDeEditarToggle.toggle()
                    },
                    label: {
                        Image(systemName: "chevron.right")
                            .padding(UIScreen.main.bounds.height*0.02)
                    })
                    .foregroundColor(Color.yellow) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                    .padding(.leading, 5)
                    .padding(.top, -15)
                    .fullScreenCover(isPresented: $paraTelaDeEditarToggle) {
                        EditandoVoceView()
                    }
                
                
            }
           
            Spacer()
            Spacer()
            
            Button(action: {
                self.paraYouViewToggle.toggle()
                
            }) {
                Text("Rever sua apresentação")
                    .bold()
            }
            .frame(width: UIScreen.main.bounds.width*0.7, height: 20, alignment: .center)
            .padding(.top, UIScreen.main.bounds.height*0.015)
            .padding(.bottom, UIScreen.main.bounds.height*0.015)
            .padding(.leading, UIScreen.main.bounds.width*0.05)
            .background(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))))
            .foregroundColor(Color.init(red: 0.8902, green: 0.9059, blue: 0.97255)) // Roxo mais claro 3E7F8 = (227, 231, 248)
            .cornerRadius(10)
            .shadow(radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
//            .fullScreenCover(isPresented: $paraYouViewToggle) {
                
//                YouView()
                
//            }
            
            Spacer()
            
            
        }
        .background(
        Image("editandoVoce")
        .resizable()
        .aspectRatio(contentMode: .fit)
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*1, alignment: .leading)
        )
    }
}

struct VoceView_Previews: PreviewProvider {
    static var previews: some View {
        VoceView()
    }
}
