//
//  EditandoVoceView.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct EditandoVoceView: View {
    
    @State var paraTelaDeEditarToggle = false
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        VStack(alignment:.center) {
            
            HStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/) {

                Button(
                    action: {
                        self.paraTelaDeEditarToggle.toggle()
                        presentationMode.wrappedValue.dismiss()
                    },
                    label: {
                        Image(systemName: "chevron.backward")
                            .padding(UIScreen.main.bounds.height*0.02)
                    })
                    .foregroundColor(Color.init(red: 0.3451, green: 0.337255, blue: 0.84)) // Roxo mais escuro: 5856D6 = (88, 86, 214)))
                    
                    .padding(.top, -15)

           
            }
            .padding(.trailing, 350)
            
            Spacer()
            
        }
        .background(
            Image("editarVoce")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height*1, alignment: .leading)
        )
    }
}

struct EditandoVoceView_Previews: PreviewProvider {
    static var previews: some View {
        EditandoVoceView()
    }
}
