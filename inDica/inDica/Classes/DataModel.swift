//
//  DataModel.swift
//  inDica
//
//  Created by Juliano Vaz on 17/01/21.
//

import Foundation
import SwiftUI

class DataModel: ObservableObject {
    @Published var rendas = ["Menos que um salário mínimo por mês", "de um a dois salários mínimos por mês", "de dois a trê salário mínimos por mês"]
    
    @Published var genders = ["Uma mulher transgênero", "Uma mulher cisgênero", "Um homem transgênero", "Um homem cisgênero", "Não sou binário"]
    
    @Published var breeds = ["Uma pessoa negra", "Uma pessoa indígena", "Uma pessoa branca", "Uma pessoa parda", "Eu nem sei..."]
    
    @Published var sexualities = ["LGBTQIA+", "Heterossexual"]
    
    @Published var deficiencies = ["Disfluência na fala", "Deficiência motora", "Deficiência auditiva", "Deficiência visual"]
    
    @Published var areas = ["Computação", "Design", "Educação", "Administração"]
    
    @Published var difficulties = ["Montar um currículo interessante", "Preparação para entrevistas", "Saber o que esperam de mim", "Me capacitar para vaga", "Conciliar estudo e trabalho"]
    
}
