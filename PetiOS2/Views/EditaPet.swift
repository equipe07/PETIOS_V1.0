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
       
    init(pet: PetModel, titulo: String = "Editar Pet"//, listaPets: inout PetViewModel
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
            .frame(maxWidth: 450)
            .scrollContentBackground(.hidden)
            .background(.clear)
            
        } //fim Form
        
        
        HStack{
            //Inserindo um botao para deletar pet
            Button {
                        context.delete(petAtual)
                        try? context.save()
                        dismiss()
                    } label: {
                        Image(systemName: "trash.fill")
                            .foregroundColor(Color.appPreto)
                            .font(.system(size: 30))
                    } //fim do Button deletar
              
            .padding(.leading, 40)//para afastar da borda esquerda
            
            Spacer()
            
            Button{
                
                //editando dentro da variavel listaPets.editPet(original: petAtual, updated: novoPet)
                
                try? context.save()
                
                dismiss()
                //print(petViewModel.pets)
            } label:{
                ZStack {
                    RoundedRectangle(cornerRadius: 2           )
                        .foregroundStyle(Color.appLaranja)
                        .frame(width:100, height:40)
                        .clipShape(RoundedRectangle(cornerRadius:10))
                    Text("Salvar")
                        .foregroundColor(Color.white)
                        .bold()
                        .padding(.bottom, 2)
                }//fim da ZStack
            } //fim do button salvar
            .padding(.trailing, 20) //para afastar da borda direita
        } //fim da HStack
           // .padding(.bottom, 20) //sobe um pouco os botoes
       
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


    
