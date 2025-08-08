//
//  PetSalva.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 04/08/25.
//

import SwiftUI

struct EditaPet: View {
   
     // Passando variavel entre as interfaces
    // @Bindable var listaPets: PetViewModel
    //editando no contexto
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    
    //Dados dos Pickers
    @State private var especies: [String] = ["Cachorro", "Gato", "Ave"]
    @State private var racas:  [String] = ["Dachshund", "Poodle", "Shih Tzu", "SRD", "Maltipoo"]
    @State private var portes:  [String] = ["Pequeno", "Médio", "Grande"]
    @State private var cores:  [String] = ["Branco", "Preto", "Cinza", "Amarelo"]
    @State private var sexos: [String] = ["Macho", "Fêmea"]
    
    @State var titulo: String
    @State var petAtual:PetModel
       
    init(pet: PetModel, titulo: String = "Cadastrar Pet"//, listaPets: inout PetViewModel
         ) {
        _petAtual = State(initialValue: pet)
        _titulo = State(initialValue: titulo)
    }
    
    var body: some View {
        PetFundo {
            Text(titulo)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.appMarrom)
            Form{
                TextField(text: $petAtual.nome, prompt: Text("Digite o nome do pet")) {
                    Text("Nome do Pet")
                }.disableAutocorrection(true)
                //}//Section(header: Text("Nome do Pet"))
                DatePicker("Data de Nascimento", selection: $petAtual.nascimento, displayedComponents: .date)
                Picker("Espécie", selection: $petAtual.especie)
                {
                    ForEach(especies, id: \.self){
                        especieAtual in Text(especieAtual)
                    }
                }
                Picker("Raca", selection: $petAtual.raca)
                {
                    ForEach(racas, id: \.self){
                        racaAtual in Text(racaAtual)
                    }
                    
                }
                Picker("Sexo", selection: $petAtual.sexo)
                {
                    
                    ForEach(sexos, id: \.self){
                        sexo in Text(sexo)
                    }
                }
                Picker("Porte", selection: $petAtual.porte)
                {
                    ForEach(portes, id: \.self){
                        porteAtual in Text(porteAtual)
                    }                        }
                Picker("Cor", selection: $petAtual.cor)
                {
                    ForEach(cores, id: \.self){
                        corAtual in Text(corAtual)
                    }
                }
                Toggle("Castrado", isOn: $petAtual.castrado)
                
            } //Form
            .frame(maxWidth: 500)
            .scrollContentBackground(.hidden)
            .background(.clear)
            
        } //fim Form
        
        Button{
            /*let novoPet = PetModel(especie: especiePet, raca: racaPet,
                                nome: nomePet,
                                nascimento: nascimentoPet,
                                porte: portePet,
                                sexo: sexoPet,
                                cor: corPet,
                                castrado: castradoPet,
                                falecido: false)
           //editando dentro da variavel listaPets.editPet(original: petAtual, updated: novoPet)*/
            
            try? context.save()
            
            dismiss()
            //print(petViewModel.pets)
        } label:{
            ZStack {
                RoundedRectangle(cornerRadius: 2           )
                    .foregroundStyle(Color.appLaranjaClaro)
                    .frame(width:200, height:50)
                    .clipShape(RoundedRectangle(cornerRadius:10))
                Text("Confirmar")
                    .foregroundColor(.black)
                    .font(.title)
                    .bold()
            }
        }
        
    }// fim View
} //fim struct

#Preview {
    let meupet = PetModel(
        especie: "Gato",
        raca: "SRD",
        nome: "Mimi",
        nascimento: Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!,
        porte: "Pequeno",
        sexo: "Fêmea",
        cor: "Cinza",
        castrado: true,
        falecido: false
    )
    
   //let viewModel = PetViewModel()
   // @Bindable var petViewModel:PetViewModel
    
    //PetSalva(pet: meupet)
}

/*#Preview {
    let meupet = PetModel(
        especie: "",
        raca: "",
        nome: "",
        nascimento:Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!,
        porte: "",
        sexo: "",
        cor: "",
        castrado: false,
        falecido: false)
    PetSalva(pet:meupet)
        }
    
*/


    
