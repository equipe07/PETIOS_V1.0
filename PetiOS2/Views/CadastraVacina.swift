//
//  CadastraPet.swift
//  PetiOSv4
//
//  Created by iredefbmac_26 on 18/07/25.
//

import SwiftUI
import SwiftData


struct CadastraVacina: View
{
    //Salvando no contexto
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    
    
    @State private var nomeVacina = ""
    @State private var dataVacina: Date = Date()
    @State private var dataProximaVacina: Date = Date()
    
    var pet: PetModel
    
    var body: some View
    {
        PetFundo
        {
            Text("Cadastro Nova Vacina")
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.appMarrom)
            Form
            {
                TextField(text: $nomeVacina, prompt: Text("Digite o nome da vacina"))
                {
                    Text("Nome da Vacina")
                }.disableAutocorrection(true)
                
                DatePicker("Data da Vacina", selection: $dataVacina, displayedComponents: .date)
                DatePicker("Data da Próxima Vacina", selection: $dataProximaVacina, displayedComponents: .date)
                
            } //Form
            .frame(maxWidth: 500)
            .scrollContentBackground(.hidden)
            .background(.clear)
            // .navigationTitle("Cadastrar Pet")
            
            Button
            {
                let novaVacina = VacinaModel(
                    nomeVacina: nomeVacina,
                    dataVacina: dataVacina,
                    dataProximaVacina: dataProximaVacina)
                pet.vacinaPet.append(novaVacina)
                try? context.save()
                dismiss()
                
            } label:{
                ZStack {
                    RoundedRectangle(cornerRadius: 2)
                        .foregroundStyle(Color.appLaranjaEscuro)
                        .frame(width: 100, height: 40)
                        .clipShape(RoundedRectangle(cornerRadius:10))
                    
                    Text("Confirmar")
                        .foregroundColor(.white)
                        .bold()
                        .padding(.bottom, 2)
                    
                }
            }
            .padding()
        }
        }
}


/*#Preview {
    let meupet = PetModel(
        especie: "Cachorro",
        raca: "Maltipoo",
        nome: "Sherlock Holmes",
        nascimento:Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!,
        porte: "pequeno",
        sexo: "macho",
        cor: "branco",
        castrado: false,
        falecido: false)
    CadastraPet()
}*/
