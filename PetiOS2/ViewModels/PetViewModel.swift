//
//  PetViewModel.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 20/05/25.
//

import Foundation

class PetViewModel{
    var pets: [PetModel] = [PetModel(
        especie: "cachorro",
        raça: "Maltipoo",
        nome: "Sherlock Holmes",
        nascimento: "19/06/2019",
        porte: "pequeno",
        sexo: "macho",
        cor: "branco",
        castrado: false,
        falecido: false),
                                    PetModel(
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
                                        falecido: true)
    ]
    
    
        
}


