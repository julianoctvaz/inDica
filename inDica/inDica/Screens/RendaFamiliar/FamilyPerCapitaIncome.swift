//
//  FamilyPerCapitaIncome.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct FamilyPerCapitaIncomeView: View {
    
    var title = "Tudo bem falar da sua condição financeira?"
    var description = "Minha familia recebe, por pessoa..."
    
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

struct FamilyPerCapitaIncome_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            FamilyPerCapitaIncomeView()
                .previewDevice("iPhone SE (2nd generation)")
            FamilyPerCapitaIncomeView()
                .previewDevice("iPhone 11")
            FamilyPerCapitaIncomeView()
                .previewDevice("iPhone 8")
            FamilyPerCapitaIncomeView()
                .previewDevice("iPhone 11 Pro")
        }
    }
}
