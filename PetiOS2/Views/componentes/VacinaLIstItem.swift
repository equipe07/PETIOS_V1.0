//
//  PetLIstItem.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 19/05/25.
//

import SwiftUI

struct VacinaLIstItem: View {
    var vacina: VacinaModel
    var body: some View {
        HStack{
            Text(vacina.nomeVacina)
            Spacer()
           // Text(vacina.dataVacina)
            Spacer()
          //  Text(vacina.dataProximaVacina)
            
        }
    } // fim do some View
    
} //end of View


/*#Preview {
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
}*/
