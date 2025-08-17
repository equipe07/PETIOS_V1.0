
//
//  PetModel.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 18/05/25.
//

import Foundation
import SwiftData

@Model
class TutorModel{
    var id:UUID = UUID()
    var nome: String
    var email: String
    var telefone: String
    var sexo: String
    var nascimento: Date
    var pais: String
    var cep: String
    var endereco: String
    var numero: String
    var complemento: String
    var bairro: String
    var cidade: String
    var estado: String
        
    
    init(nome: String, email: String, telefone: String, sexo: String, nascimento: Date, pais: String, cep: String, endereco: String, numero: String, complemento: String, bairro: String, cidade: String, estado: String) {
        self.nome = nome
        self.email = email
        self.telefone = telefone
        self.sexo = sexo
        self.nascimento = nascimento
        self.pais = pais
        self.cep = cep
        self.endereco = endereco
        self.numero = numero
        self.complemento = complemento
        self.bairro = bairro
        self.cidade = cidade
        self.estado = estado
    }
    
    

    
}
