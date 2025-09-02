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
            switch pet.especie.lowercased() {
            case "cachorro":
                  Image(systemName: "dog")
            case "gato":
                Image(systemName: "cat")
            default:
                Image( systemName: "bird")
            }
            VStack (alignment:.leading ){Text(pet.nome)
                    .bold()
                    .font(.system(size:25))
                                    
            HStack{
                Text(pet.raca)
                Spacer()
                Text(pet.cor)
                Spacer()
                Text(pet.sexo)
                
            }
                let hoje = Date.now
            //Text("Data de Nascimento: \(pet.nascimento)")
                // trocando por idade
                
                Text("Idade: \(Calendar.current.dateComponents([.year], from: pet.nascimento, to: hoje).year ?? 0) anos")
                
        }
        }
    }
}

#Preview {
    PetLIstItem(pet:PetModel(
        especie: "cachorro",
        raca: "Poodle",
        nome: "Tsuki",
        nascimento: Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!,
        porte: "pequeno",
        sexo: "femea",
        cor: "branco",
        castrado: false,
        falecido: false))
}
