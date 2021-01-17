//
//  DataModel.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import Foundation
import SwiftUI

class DataModel: ObservableObject {
    @Published var rendas = ["menos que um salário mínimo por mês.", "de um a dois salários mínimos por mês.", "de dois a três salário mínimos por mês.", "mais que três salários mínimos por mês."]
    
    @Published var genders = ["uma mulher transgênero,", "uma mulher cisgênero,", "um homem transgênero,", "um homem cisgênero,", "uma pessoa não-binária,"]
    
    @Published var breeds = ["uma pessoa negra,", "uma pessoa indígena,", "uma pessoa parda,", "uma pessoa branca,", "(eu nem sei)"]
    
    @Published var sexualities = ["LGBTQIA+", "heterossexual", "(prefiro não dizer)"]
    
    @Published var deficiencies = ["disfluência na fala.", "deficiência motora.", "deficiência auditiva.", "deficiência visual.", "(não sou portadora)"]
    
    @Published var areas = ["tecnologias,", "design,", "administração,", "vendas,", "serviços", "(não tenho uma área específica)"]
    
    @Published var difficulties = ["montar um currículo legal,", "me preparar para entrevistas ou seleções,", "saber o que esperam de mim no emprego,", "me capacitar para vagas,", "aprender a onciliar estudo e trabalho,", "conseguir lidar com minha disfluência na fala,"]
    
}
