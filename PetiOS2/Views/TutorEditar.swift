//
//  TutorEditar.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 17/08/25.
//

import SwiftUI
import SwiftData

struct TutorEditar: View {
    // Passando variavel entre as interfaces
    // @Bindable var listaPets: PetViewModel
    //editando no contexto
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
       
    //Dados dos Pickers
    
    @State private var sexos: [String] = ["Feminino", "Masculino", "Outros", "Prefere não revelar"]
    
    @State var titulo: String =  "Editar Dados Tutor"
    @State var tutor:TutorModel
       
    init(tutor: TutorModel
         ) {
        _tutor = State(initialValue: tutor)
          }
    
    var body: some View {
        PetFundo {
            Text(titulo)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.appMarrom)
            Form{
                TextField(text: $tutor.nome, prompt: Text("Digite o nome:")) {
                    Text("Nome")
                }.disableAutocorrection(true)
                //}//Section(header: Text("Nome do Pet"))
                
                TextField(text: $tutor.email, prompt: Text("Digite o email:")) {
                    Text("E-mail")
                }.disableAutocorrection(true)
                
                TextField(text: $tutor.telefone, prompt: Text("Digite o número de telefone:")) {
                    Text("Número de telefone")
                }.disableAutocorrection(true)
                
                Picker("Sexo", selection: $tutor.sexo)
                {
                    ForEach(sexos, id: \.self){
                        sexo in Text(sexo)
                    }
                }
                
                DatePicker("Data de Nascimento", selection: $tutor.nascimento, displayedComponents: .date)
                
                TextField(text: $tutor.pais, prompt: Text("Digite o país:")) {
                    Text("País")
                }.disableAutocorrection(true)
                
                TextField(text: $tutor.cep, prompt: Text("Digite o CEP:")) {
                    Text("CEP")
                }.disableAutocorrection(true)
            
                TextField(text: $tutor.endereco, prompt: Text("Digite o endereco:")) {
                    Text("Endereço")
                }.disableAutocorrection(true)
                
                TextField(text: $tutor.numero, prompt: Text("Digite o número:")) {
                    Text("Número")
                }.disableAutocorrection(true)
                
                TextField(text: $tutor.complemento, prompt: Text("Digite o complemento do endereço se houver:")) {
                    Text("Complemento")
                }.disableAutocorrection(true)
            
                TextField(text: $tutor.bairro, prompt: Text("Digite o bairro:")) {
                    Text("Bairro")
                }.disableAutocorrection(true)
                
                TextField(text: $tutor.cidade, prompt: Text("Digite a cidade:")) {
                    Text("Cidade")
                }.disableAutocorrection(true)
                            
                TextField(text: $tutor.estado, prompt: Text("Digite o estado:")) {
                    Text("Estado")
                }.disableAutocorrection(true)
                
            } //Form
            .frame(maxWidth: 450,maxHeight: 400)
            .scrollContentBackground(.hidden)
            .background(.clear)
            
        } //fim Form
        
       
        Button{
            try? context.save()
            
            dismiss()
            //print(petViewModel.pets)
        } label:{
            ZStack {
                RoundedRectangle(cornerRadius: 2           )
                    .foregroundStyle(Color.appMarrom)
                    .frame(width:150, height:40)
                    .clipShape(RoundedRectangle(cornerRadius:10))
                Text("Alterar Dados")
                    .foregroundColor(.white)
                    .bold()
            }
        }
        
    }// fim View
} //fim struct

#Preview {
    let tutorTeste = TutorModel(
        nome: "Maria",
        email: "maria@gmail.com",
        telefone: "55 85 98765-4321",
        sexo: "Feminino",
        nascimento: Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!,
        pais: "Brasil",
        cep: "62800-000",
        endereco: "Rua Coronel Meireles",
        numero: "s/n",
        complemento: "Apto 304",
        bairro: "Centro",
        cidade: "Paracuru",
        estado: "CE"
    )
    
}





    
