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
    
    func AddVacina(nomeVacina: String,
                   dataVacina: Date,
                   dataProximaVacina: Date
    ) {
        
        let novaVacina = VacinaModel(nomeVacina:nomeVacina,
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
        AddVacina(nomeVacina: "Sherlock Holmes",
                  dataVacina: Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!,
                  dataProximaVacina: Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!)
    }
}
