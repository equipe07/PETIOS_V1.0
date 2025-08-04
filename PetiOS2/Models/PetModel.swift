//
//  PetModel.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 18/05/25.
//

import Foundation
import SwiftData

@Model
class PetModel{
    var id:UUID = UUID()
    var especie: String
    var raca: String
    var nome: String
    var nascimento: Date
    var porte: String
    var sexo: String
    var cor: String
    var castrado: Bool
    var falecido: Bool
    
    
    init(especie: String, raca: String, nome: String, nascimento: Date, porte: String, sexo: String, cor: String, castrado: Bool, falecido: Bool) {
        self.especie = especie
        self.raca = raca
        self.nome = nome
        self.nascimento = nascimento
        self.porte = porte
        self.sexo = sexo
        self.cor = cor
        self.castrado = castrado
        self.falecido = falecido
    }
    
    

    
}
