//
//  CadastraPet.swift
//  PetiOSv4
//
//  Created by iredefbmac_26 on 18/07/25.
//

import SwiftUI

struct CadastraPet: View {
    @State var nomePet: String
    @State var nascimentoPet: Date
    @State var raçaPet: String
    @State var especiePet: String
    @State var portePet: String
    @State private var corPet: String
    @State var castradoPet: Bool
    @State var sexoPet: String
    
    //Dados dos Pickers
    @State private var especies: [String] = ["Cachorro", "Gato", "Ave"]
    @State private var racas:  [String] = ["Dachshund", "Poodle", "Shih Tzu", "SRD", "Maltipoo"]
    @State private var portes:  [String] = ["Pequeno", "Médio", "Grande"]
    @State private var cores:  [String] = ["Branco", "Preto", "Cinza", "Amarelo"]
    @State private var sexos: [String] = ["Macho", "Fêmea"]
    
    @State var titulo: String
    
    init(pet: PetModel, titulo: String = "Cadastrar Pet" )
        {
            _nomePet = State(initialValue: pet.nome)
            _titulo = State(initialValue: titulo)
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "dd/MM/yyyy"
            _nascimentoPet = State(initialValue: dateFormatter.date(from:pet.nascimento)!)
            _sexoPet = State(initialValue: pet.sexo.capitalized)
            _castradoPet = State(initialValue: pet.castrado)
            _corPet = State(initialValue: pet.cor.capitalized)
            _portePet = State(initialValue: pet.porte.capitalized)
            _raçaPet = State(initialValue: pet.raça.capitalized)
            _especiePet = State(initialValue: pet.especie.capitalized)
        
        
    }
    
    
    
    var body: some View {
        PetFundo {
            
            Text(titulo)
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
                    Picker("Raca", selection: $raçaPet)
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
    let meupet=PetModel(
        especie: "Cachorro",
        raça: "Maltipoo",
        nome: "Sherlock Holmes",
        nascimento: "19/06/2019",
        porte: "pequeno",
        sexo: "macho",
        cor: "branco",
        castrado: false,
        falecido: false)
    CadastraPet(pet:meupet)//nomePet: "Sherlock", especiePet: 1, sexoPet: "Macho") // Ahora funciona sin errores
}*/
