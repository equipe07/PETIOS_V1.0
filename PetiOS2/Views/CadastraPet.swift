//
//  CadastraPet.swift
//  PetiOSv4
//
//  Created by iredefbmac_26 on 18/07/25.
//

import SwiftUI

struct CadastraPet: View {
    //Passando a variavel
    //@Bindable var listaPets: PetViewModel
    //Salvando no contexto
    @Environment(\.modelContext) private var context
    
    @Environment(\.dismiss) private var dismiss
    
    @State private var nomePet = ""
    @State private var nascimentoPet: Date = Date()
    @State private var racaPet: String = ""
    @State private var especiePet: String = ""
    @State private var portePet: String = ""
    @State private var corPet: String = ""
    @State private var castradoPet: Bool = false
    @State private var sexoPet: String = ""
    
    //Dados dos Pickers
    @State private var especies: [String] = ["Cachorro", "Gato", "Ave"]
    @State private var racas:  [String] = ["Dachshund", "Poodle", "Shih Tzu", "SRD", "Maltipoo"]
    @State private var portes:  [String] = ["Pequeno", "Médio", "Grande"]
    @State private var cores:  [String] = ["Branco", "Preto", "Cinza", "Amarelo"]
    @State private var sexos: [String] = ["Macho", "Fêmea"]
    
    var body: some View {
        PetFundo {
            
            Text("Cadastra Pet")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.appMarrom)
                Form {
                    
                    //Section(header: Text("Nome do Pet")) {
                    
                    TextField(text: $nomePet, prompt: Text("Digite o nome do pet")) {
                            Text("Nome do Pet")
                        }.disableAutocorrection(true)
                    //}//Section(header: Text("Nome do Pet"))
                    DatePicker("Data de Nascimento", selection: $nascimentoPet, displayedComponents: .date)
                    Picker("Espécie", selection: $especiePet)
                        {
                            ForEach(especies, id: \.self){
                                especieAtual in Text(especieAtual)
                            }
                        }
                    Picker("Raca", selection: $racaPet)
                        {
                            ForEach(racas, id: \.self){
                                racaAtual in Text(racaAtual)
                            }
                            
                        }
                    Picker("Sexo", selection: $sexoPet)
                    {
                        
                        ForEach(sexos, id: \.self){
                            sexo in Text(sexo)
                        }
                    }
                    Picker("Porte", selection: $portePet)
                        {
                            ForEach(portes, id: \.self){
                                porteAtual in Text(porteAtual)
                            }                        }
                    Picker("Cor", selection: $corPet)
                        {
                            ForEach(cores, id: \.self){
                                corAtual in Text(corAtual)
                            }
                        }
                        Toggle("Castrado", isOn: $castradoPet)
                    
                } //Form
                 .frame(maxWidth: 500)
                 .scrollContentBackground(.hidden)
                 .background(.clear)
                // .navigationTitle("Cadastrar Pet")
                
                    Button{
                        /* Adicionando pet manualmente na variavel recebida
                        listaPets.AddPet(especie:especiePet,
                                            raca: raçaPet,
                                            nome: nomePet,
                                            nascimento:nascimentoPet,
                                            porte: portePet,
                                            sexo: sexoPet,
                                            cor: corPet,
                                            castrado: castradoPet,
                                            falecido: false)
                         */
                        let novoPet = PetModel(especie: especiePet, raca: racaPet,
                                            nome: nomePet,
                                            nascimento: nascimentoPet,
                                            porte: portePet,
                                            sexo: sexoPet,
                                            cor: corPet,
                                            castrado: castradoPet,
                                            falecido: false)
                        context.insert(novoPet)
                                        try? context.save()
                           dismiss()
                    } label:{
                        ZStack {
                            RoundedRectangle(cornerRadius: 2           )
                                .foregroundStyle(Color.appLaranjaEscuro)
                                .frame(width: 100, height:40)
                                .clipShape(RoundedRectangle(cornerRadius:10))
                            
                            Text("Confirmar")
                                .foregroundColor(.black)
                                .bold()
                                .padding(2)
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
