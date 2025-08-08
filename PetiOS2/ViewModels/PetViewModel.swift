//
//  PetViewModel.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 20/05/25.
//

import Foundation
import SwiftData
import Observation

@Observable
class PetViewModel{
    
    //var context: ModelContext
    let myDateFormatter = DateFormatter()
    
    var pets: [PetModel] = []
    
    func AddPet(especie: String,
                raca: String,
                nome: String,
                nascimento: Date,
                porte: String,
                sexo: String,
                cor: String,
                castrado: Bool,
                falecido: Bool) {
        
        let novoPet = PetModel(especie:especie,
                               raca:raca,
                               nome:nome,
                               nascimento:nascimento,
                               porte:porte,
                               sexo:sexo,
                               cor:cor,
                               castrado:castrado,
                               falecido:falecido
        )
        
        pets.append(novoPet)
       //context.insert(novoPet)
        //try? context.save()
        //carregarPet()
    } //fim func AddPet
    
    func editPet(original: PetModel, updated: PetModel) {
        if let index = pets.firstIndex(where: { $0.id == original.id }) {
            pets[index] = updated
        }
    }
    
    
    init()
    {
        myDateFormatter.dateFormat = "dd/MM/yyyy"
        AddPet(especie: "cachorro",
               raca: "Maltipoo",
               nome: "Sherlock Holmes",
               // nascimento: DateComponents(year: 2019, month:06, day:26).date!,
               nascimento: Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!,
               porte: "pequeno",
               sexo: "macho",
               cor: "branco",
               castrado: false,
               falecido: false)
    }
    
    
    /* PetModel(
     especie: "cachorro",
     raça: "Poodle",
     nome: "Tsuki",
     nascimento: "02/03/2024",
     porte: "pequeno",
     sexo: "femea",
     cor: "branco",
     castrado: false,
     falecido: false),
     PetModel(
     especie: "cachorro",
     raça: "Poodle",
     nome: "Snoopy",
     nascimento: "01/12/2009",
     porte: "medio",
     sexo: "macho",
     cor: "branco",
     castrado: true,
     falecido: true),
     PetModel(
     especie: "cachorro",
     raça: "Poodle",
     nome: "Shorondiger",
     nascimento: "09/04/2001",
     porte: "médio",
     sexo: "macho",
     cor: "champagne",
     castrado: true,
     falecido: true),
     PetModel(
     especie: "gato",
     raça: "Siames",
     nome: "Piveta",
     nascimento: "09/04/2001",
     porte: "médio",
     sexo: "femea",
     cor: "marrom com preto",
     castrado: true,
     falecido: false),
     
     PetModel(
     especie: "passarinho",
     raça: "Periguito",
     nome: "Ulisses",
     nascimento: "01/01/1991",
     porte:  "pequeno",
     sexo: "macho",
     cor: "verde",
     castrado: false,
     falecido: true) */
    
    
    
}
