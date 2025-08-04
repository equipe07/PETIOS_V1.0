//
//  PetViewModel.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 20/05/25.
//

import Foundation
import SwiftData

@Observable

class PetViewModel{
    let myDateFormatter = DateFormatter()
    init()
    {
        myDateFormatter.dateFormat = "dd/MM/yyyy"
    }
    
    
    var pets: [PetModel] = [PetModel(
        especie: "cachorro",
        raca: "Maltipoo",
        nome: "Sherlock Holmes",
       // nascimento: DateComponents(year: 2019, month:06, day:26).date!,
        nascimento: Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!,
        porte: "pequeno",
        sexo: "macho",	
        cor: "branco",
        castrado: false,
        falecido: false)
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
    ]
    
    
        
}


