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
}
