//
//  ContentView.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import SwiftUI

struct ContentView: View {


//        @EnvironmentObject var user: UserSettings
//        init() {
//            UITabBar.appearance().isTranslucent = true
//            UITabBar.appearance().barTintColor = UIColor(named: "AmareloMédio")
        
        var body: some View {
            
            
            TabView {
                MentorsView()
                    .tabItem {
                        Image(systemName: "person.2")
                        Text("Mentorias")
                    }
                
                JourneyView()
                    .tabItem {
                        Image(systemName: "flag")
                        Text("Jornada")
                    }
                
                Provisoria()
//                    .onAppear(perform: {
//                        self.user.configureFirebaseState()
//                    })
                    .tabItem {
                        Image(systemName: "face.smiling")
                        Text("Você")
                    }
            }
            .accentColor(Color.blue)
            
        }
    

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
