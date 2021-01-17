//
//  Journey.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct JourneyView: View {
    
    
    @State var showMontarCurriculoLegal_Toggle = false
    
    var body: some View {
        
        VStack(alignment: .leading) {
            
                Text("O que podemos trabalhar com você")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.black)
                    .bold()
                    .frame(width: UIScreen.main.bounds.width*0.65, height: 105, alignment: .leading)
                    .padding()
                    
          
                
                VStack(alignment: .leading){
                    
                    HStack(alignment: .bottom){
                        
                    Text("Comece por aqui")
                        .foregroundColor(Color.black)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .frame(width: UIScreen.main.bounds.width*0.55, height: 30, alignment: .leading)
                        .padding()
                        .padding(.top, -UIScreen.main.bounds.width*0.027)
                        
                        
                Button(
                    action: {
                    
                    },
                    label: {
                        Image(systemName: "chevron.right")
                            .padding(UIScreen.main.bounds.height*0.02)
                    })
                    .foregroundColor(Color.blue) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
               }
               .frame(width: UIScreen.main.bounds.width*0.9, alignment: .center)
                   

                HStack(alignment: .bottom){
               
                
                Text("Aprender a conciliar estudos e trabalho")
                    .foregroundColor(Color.black)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.headline)
                    .frame(width: UIScreen.main.bounds.width*0.5, height: 30, alignment: .leading)
                    .padding()
                    .padding(.top, UIScreen.main.bounds.width*0.097)
                    
                    
                    Button(
                        action: {
                        },
                        label: {
                            Image(systemName: "chevron.right")
                                .padding(UIScreen.main.bounds.height*0.02)
                        })
                        .foregroundColor(Color.blue) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                        .padding(.leading, UIScreen.main.bounds.width*0.045)
                }
                .frame(width: UIScreen.main.bounds.width*0.9, alignment: .center)
               
                    HStack(alignment: .bottom){
                        
                    
                Text("Saber o que esperam de mim no emprego")
                    .foregroundColor(Color.black)
                    .fixedSize(horizontal: false, vertical: true)
                    .font(.headline)
                    .frame(width: UIScreen.main.bounds.width*0.55, height: 30, alignment: .leading)
                    .padding()
                    .padding(.top, UIScreen.main.bounds.width*0.097)
 
                        
                        
                        Button(
                            action: {
                            },
                            label: {
                                Image(systemName: "chevron.right")
                                    .padding(UIScreen.main.bounds.height*0.02)
                            })
                            .foregroundColor(Color.blue) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                    }
                    .frame(width: UIScreen.main.bounds.width*0.9, alignment: .center)
                
                        HStack(alignment: .bottom){
                            
                
                    Text("Me capacitar")
                        .foregroundColor(Color.black)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .frame(width: UIScreen.main.bounds.width*0.55, height: 30, alignment: .leading)
                        .padding()
                        .padding(.top, UIScreen.main.bounds.width*0.067)

                            
                            Button(
                                action: {
                                },
                                label: {
                                    Image(systemName: "chevron.right")
                                        .padding(UIScreen.main.bounds.height*0.02)
                                })
                                .foregroundColor(Color.blue) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                        }
                        .frame(width: UIScreen.main.bounds.width*0.9, alignment: .center)
                    
                HStack(alignment: .bottom){
                                
                            
                    Text("Montar um currículo legal")
                        .foregroundColor(Color.black)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .frame(width: UIScreen.main.bounds.width*0.55, height: 30, alignment: .leading)
                        .padding()
                        .padding(.top, UIScreen.main.bounds.width*0.087)
                    
                    
                    Button(
                        action: {
                            self.showMontarCurriculoLegal_Toggle.toggle()
                        },
                        label: {
                            Image(systemName: "chevron.right")
                                .padding(UIScreen.main.bounds.height*0.02)
                        })
                        .foregroundColor(Color.blue) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                        .fullScreenCover(isPresented: $showMontarCurriculoLegal_Toggle) {
                            MontarCurriculoView()
                        }
                }
                .frame(width: UIScreen.main.bounds.width*0.9, alignment: .center)
                    
                HStack(alignment: .bottom){
                
            
                    Text("Me preparar para entrevistas e seleções")
                        .foregroundColor(Color.black)
                        .fixedSize(horizontal: false, vertical: true)
                        .font(.headline)
                        .frame(width: UIScreen.main.bounds.width*0.55, height: 30, alignment: .leading)
                        .padding()
                        .padding(.top, UIScreen.main.bounds.width*0.084)
                    
                    
                    Button(
                        action: {
                        },
                        label: {
                            Image(systemName: "chevron.right")
                                .padding(UIScreen.main.bounds.height*0.02)
                        })
                        .foregroundColor(Color.blue) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                }
                .frame(width: UIScreen.main.bounds.width*0.9, alignment: .center)
                    
                    Spacer()
                }
                .padding(.bottom, 30)

                
             
        
            }
       
            .background(
                Image("JourneyPoints")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*0.99, alignment: .leading)
                    
                
            )
            
        }
        
   
    }



struct Journey_Previews: PreviewProvider {
    static var previews: some View {
        Group {
//            Journey()
//                .previewDevice("iPhone SE (2nd generation)")
            JourneyView()
                .previewDevice("iPhone 11")
//            JourneyView()
//                .previewDevice("iPhone 8")
//            JourneyView()
//                .previewDevice("iPhone 11 Pro")
        }
    }
}
