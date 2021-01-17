//
//  MotherView.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import Foundation
import SwiftUI

struct MotherView : View {
    
    @EnvironmentObject var toggle: OnboardingToggle
//    var user = UserSettings()
    @EnvironmentObject var user: UserSettings //deixar essa classe global com os dados do usario
    
    var body: some View {
        VStack {
            if toggle.currentPage == "Welcome" {
                WelcomeView()
            } else if toggle.currentPage == "ContentView" {
                ContentView()
            }
        }
    }
}

//struct MotherView_Previews: PreviewProvider {
//    static var previews: some View {
//        MotherView().environmentObject(ViewRouter())
//    }
//}
