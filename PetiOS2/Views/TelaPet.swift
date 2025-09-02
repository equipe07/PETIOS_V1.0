import SwiftUI


struct TelaPet: View {
    var pet: PetModel
   
    @Environment(\.modelContext) private var context
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        ZStack {
            // 🔹 Fundo personalizado
            PetFundo {
                /* EmptyView()
                 }
                 .ignoresSafeArea()
                 
                 VStack {*/
                // 🔹 Título
                
                
                VStack {
                    // Dados do pet
                    Text(pet.nome)
                        .font(.title)
                        .bold()
                        .padding()
                    
                    Text("Espécie: \(pet.especie)")
                    Text("Raça: \(pet.raca)")
                    Text("Nascimento: \(pet.nascimento.formatted(date: .numeric, time: .omitted))")
                    
                    Spacer()
                    
                    // Botões no final da tela
                    VStack {
                        // Botão Editar
                        NavigationLink(destination: EditaPet(pet: pet)) {
                            Label("Editar", systemImage: "square.and.pencil")
                                .frame(maxWidth: 200)
                                .padding()
                                .background(Color.appLaranjaEscuro)
                                .foregroundColor(.white)
                                .bold()
                                .cornerRadius(10)
                        }
                        
                        // Botão Vacinas
                        NavigationLink(destination: TelaVacinas(pet:pet)) {
                            Label("Vacinas", systemImage: "syringe")
                                .frame(maxWidth: 200)
                                .padding()
                                .background(Color.appMarrom)
                                .foregroundColor(.black)
                                .bold()
                                .cornerRadius(10)
                        }
                        
                        Spacer()
                        
                        HStack{
                            Button {
                                        context.delete(pet)
                                        try? context.save()
                                        dismiss()
                                    } label: {
                                        Image(systemName: "trash.fill")
                                            .foregroundColor(Color.appPreto)
                                            .font(.system(size: 30))
                                    } //fim do Button deletar
                              
                            .padding(.leading, 70)//para afastar da borda esquerda
                            Spacer()
                        }
                        
                       
                        }.padding(.horizontal)
                       // .border(Color.red, width: 1)
                        
                }
               // .navigationTitle("Detalhes do Pet")
            }
        }
    }
    
}
