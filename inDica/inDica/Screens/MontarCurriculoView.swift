//
//  MontarCurriculoView.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct Message: Identifiable {
    let id = UUID()
    let text: String
}

struct MontarCurriculoView: View {
    
    @State var botaoDeVoltarToggle = false
    @State private var message: Message? = nil
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        
        VStack(alignment: .leading) {
            
            HStack(alignment: .center) {
        
                Button(
                    action: {
                        self.botaoDeVoltarToggle.toggle()
                        presentationMode.wrappedValue.dismiss()
                    },
                    label: {
                        Image(systemName: "chevron.backward")
                            .padding(UIScreen.main.bounds.height*0.02)
                    })
                    .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                    .cornerRadius(100)
            }.padding(.leading, UIScreen.main.bounds.width*0.13)
              
            
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
            Spacer()
                HStack(alignment: .center) {
                    
                    Button(
                        action: {
                            self.message = Message(text: "Tudo bem, logo mais tentaremos novamente!")
                        },
                        label: {
                            Image("cancelarBranco")
                                .padding(UIScreen.main.bounds.height*0.02)
                        })
                        .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                        .cornerRadius(100)
                        .alert(item: $message) { message in
                            Alert(
                                title: Text(message.text),
                                dismissButton: .none
                            )
                        }
                    
                    Button(
                        action: {
                            self.message = Message(text: "Show! Mais um passo concluído!")
                            
                        },
                        label: {
                            Image("confirmarRoxo")
                                .padding(UIScreen.main.bounds.height*0.02)
                        })
                        .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                        .cornerRadius(100)
                    .alert(item: $message) { message in
                        Alert(
                            title: Text(message.text),
                            dismissButton: .cancel()
                        )
                    }
                }
                .padding(.leading, UIScreen.main.bounds.width*0.3)
                
            Spacer()
        
        
            
        }
        .padding(.trailing, UIScreen.main.bounds.width*0.3)
        .background(
            Image("montarCurriculo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*1, alignment: .leading)
        )
        
        
        
    }
    
}

struct MontarCurriculoView_Previews: PreviewProvider {
    static var previews: some View {
        MontarCurriculoView()
            .previewDevice("iPhone 11")
    }
}
