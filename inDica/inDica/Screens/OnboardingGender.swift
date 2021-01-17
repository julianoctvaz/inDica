//
//  OnboardingView.swift
//  inDica
//
//  Created by Matheus Andrade on 17/01/21.
//

import SwiftUI

struct OnboardingGenderView: View {
    
    var name = "Dandara"
    var description = "Eu sou..."
    
    var body: some View {
        VStack(alignment: .leading, spacing: nil, content: {
            Text("Nos conte mais sobre você, \(name)!")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .bold()
                .frame(width: UIScreen.main.bounds.width*0.65, height: 105, alignment: .leading)
                .padding()
            Text("\(description)")
                .frame(width: UIScreen.main.bounds.width*0.8, height: 30, alignment: .leading)
                .padding()
            

            OptionsScrollView()
                
            // nao consegui encontrar o icone de next nem alinhar a direita
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Image(systemName: "plus")
                        .padding(UIScreen.main.bounds.height*0.02)
            })
            .foregroundColor(.white)
            .background(Color.purple)
            .cornerRadius(100)

        })
    }
    
    
}

struct OnboardingGenderView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            OnboardingGenderView()
                        .previewDevice("iPhone SE (2nd generation)")
            OnboardingGenderView()
                        .previewDevice("iPhone 11")
            OnboardingGenderView()
                        .previewDevice("iPhone 8")
            OnboardingGenderView()
                        .previewDevice("iPhone 11 Pro")
                }
    }
}
