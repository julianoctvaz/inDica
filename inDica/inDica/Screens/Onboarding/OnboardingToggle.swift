//
//  OnboardingToggle.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//


import Foundation

class OnboardingToggle: ObservableObject {
    
    init() {
        if !UserDefaults.standard.bool(forKey: "didLaunchBefore") {
            UserDefaults.standard.set(true, forKey: "didLaunchBefore")
            currentPage = "Welcome" //aqui so so as telas de pegar os primeiros dados
        } else {
            //view principal que tem a tabbar
            currentPage = "ContentView"
        }
    }
    
    @Published var currentPage: String
}
