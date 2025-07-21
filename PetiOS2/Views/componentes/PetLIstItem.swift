//
//  PetLIstItem.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 19/05/25.
//

import SwiftUI

struct PetLIstItem: View {
    var pet: PetModel
    var body: some View {
        HStack{
            switch pet.especie {
            case "cachorro":
                  Image(systemName: "dog")
            case "gato":
                Image(systemName: "cat")
            default:
                Image( systemName: "camera.metering.unknown")
            }
            VStack (alignment:.leading ){Text(pet.nome)
                    .bold()
                    .font(.system(size:25))
                                    
            HStack{
                Text(pet.raça)
                Spacer()
                Text(pet.cor)
                Spacer()
                Text(pet.sexo)
                
            }
            
            Text("Data de Nascimento: \(pet.nascimento)")
        }
        }
    }
}

#Preview {
    PetLIstItem(pet:PetModel(
        especie: "cachorro",
        raça: "Poodle",
        nome: "Tsuki",
        nascimento: "02/03/2024",
        porte: "pequeno",
        sexo: "femea",
        cor: "branco",
        castrado: false,
        falecido: false))
}
