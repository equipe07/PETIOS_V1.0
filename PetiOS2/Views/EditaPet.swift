//
//  PetSalva.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 04/08/25.
//

import SwiftUI

struct PetSalva: View {
    //@Environment(\.modelContext) private var context
    //@Bindable var viewModel: PetViewModel
    //@Binding viewModel: PetViewModel
    //@Bindable petViewModel: PetViewModel()
    @Bindable var listaPets: PetViewModel
    @Environment(\.dismiss) private var dismiss
    @State var nomePet: String
    @State var nascimentoPet: Date
    @State var racaPet: String
    @State var especiePet: String
    @State var portePet: String
    @State var corPet: String
    @State var castradoPet: Bool
    @State var sexoPet: String
    
    //Dados dos Pickers
    @State private var especies: [String] = ["Cachorro", "Gato", "Ave"]
    @State private var racas:  [String] = ["Dachshund", "Poodle", "Shih Tzu", "SRD", "Maltipoo"]
    @State private var portes:  [String] = ["Pequeno", "Médio", "Grande"]
    @State private var cores:  [String] = ["Branco", "Preto", "Cinza", "Amarelo"]
    @State private var sexos: [String] = ["Macho", "Fêmea"]
    
    @State var titulo: String
    @State var petAtual:PetModel
       
    init(pet: PetModel, titulo: String = "Cadastrar Pet", listaPets: inout PetViewModel) {
        _petAtual = State(initialValue: pet)
        //_listaPets = petViewModel
        _nomePet = State(initialValue: pet.nome)
        _titulo = State(initialValue: titulo)
        _nascimentoPet = State(initialValue: pet.nascimento)
        // _nascimentoPet = State(initialValue: pet.nascimento)
        _sexoPet = State(initialValue: pet.sexo.capitalized)
        _castradoPet = State(initialValue: pet.castrado)
        _corPet = State(initialValue: pet.cor.capitalized)
        _portePet = State(initialValue: pet.porte.capitalized)
        _racaPet = State(initialValue: pet.raca.capitalized)
        _especiePet = State(initialValue: pet.especie.capitalized)
        //self.petViewModel = viewModel
        self.listaPets = listaPets
    }
    
    var body: some View {
        PetFundo {
            Text(titulo)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.appMarrom)
            Form{
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
            
        } //fim Form
        
        Button{
            let novoPet = PetModel(especie: especiePet, raca: racaPet,
                                nome: nomePet,
                                nascimento: nascimentoPet,
                                porte: portePet,
                                sexo: sexoPet,
                                cor: corPet,
                                castrado: castradoPet,
                                falecido: false)
            listaPets.editPet(original: petAtual, updated: novoPet)
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


    
