//
//  PetModel.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 18/05/25.
//

import Foundation

struct PetModel: Identifiable{
    var id:UUID = UUID()
    var especie: String
    var raça: String
    var nome: String
    var nascimento: String
    var sexo: String
    var cor: String
    var castrado: Bool
    var falecido: Bool
    

    
}
