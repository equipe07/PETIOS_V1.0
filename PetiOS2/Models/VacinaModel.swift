//
//  PetModel.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 18/05/25.
//

import Foundation
import SwiftData

@Model
class VacinaModel{
    var id:UUID = UUID()
    var nome: String
    var dataVacina: Date
    var dataProximaVacina: Date
    
    init(nome: String, dataVacina: Date, dataProximaVacina: Date) {
        self.nome = nome
        self.dataVacina = dataVacina
        self.dataProximaVacina = dataProximaVacina
    }
  
    
}
