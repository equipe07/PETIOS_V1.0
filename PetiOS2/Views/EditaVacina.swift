//
//  PetSalva.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 04/08/25.
//

import SwiftUI

struct EditaVacina: View {
   
     // Passando variavel entre as interfaces
    // @Bindable var listaPets: PetViewModel
    //editando no contexto
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    
   
    @State var titulo: String
    @State var vacinaAtual: VacinaModel
       
    init(vacina: VacinaModel, titulo: String = "Editar Vacina"//, listaPets: inout PetViewModel
         ) {
        _vacinaAtual = State(initialValue: vacina)
        _titulo = State(initialValue: titulo)
    }
    
    var body: some View {
        PetFundo {
            Text(titulo)
                .font(.title)
                .fontWeight(.bold)
                .foregroundColor(Color.appMarrom)
            Form{
                TextField(text: $vacinaAtual.nomeVacina, prompt: Text("Digite o nome da vacina")) {
                    Text("Vacina:")
                }.disableAutocorrection(true)
                //}//Section(header: Text("Nome do Pet"))
                DatePicker("Data da Vacinação:", selection: $vacinaAtual.dataVacina, displayedComponents: .date)
                DatePicker("Revacinar em:", selection: $vacinaAtual.dataProximaVacina, displayedComponents: .date)
                
            } //Form
            .frame(maxWidth: 500)
            .scrollContentBackground(.hidden)
            .background(.clear)
            
        } //fim Form
        
        
        HStack{
            //Inserindo um botao para deletar pet
            Button {
                        context.delete(vacinaAtual)
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
                
                try? context.save()
                
                dismiss()
               
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


    
