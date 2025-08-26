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
class VacinaViewModel{
    
    //var context: ModelContext
    let myDateFormatter = DateFormatter()
    
    var vacinas: [VacinaModel] = []
    
    func AddVacina(nome: String,
                   dataVacina: Date,
                   dataProximaVacina: Date
    ) {
        
        let novaVacina = VacinaModel(nome:nome,
                                     dataVacina:dataVacina,
                                     dataProximaVacina:dataProximaVacina
                                     ) //fim nova vacina
        
        vacinas.append(novaVacina)
       //context.insert(novoPet)
        //try? context.save()
        //carregarPet()
    } //fim func AddPet
    
    func editVacina(original: VacinaModel, updated: VacinaModel) {
        if let index = vacinas.firstIndex(where: { $0.id == original.id }) {
            vacinas[index] = updated
        }
    }
    
    
    init()
    {
        myDateFormatter.dateFormat = "dd/MM/yyyy"
        AddVacina(especie: "cachorro",
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
