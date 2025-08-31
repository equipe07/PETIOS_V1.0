import SwiftUI


struct TelaPet: View {
    var pet: PetModel
    
    
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
                    HStack {
                        // Botão Editar
                        NavigationLink(destination: EditaPet(pet: pet)) {
                            Label("Editar", systemImage: "square.and.pencil")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.appMarrom)
                                .foregroundColor(.white)
                                .bold()
                                .cornerRadius(10)
                        }
                        
                        // Botão Vacinas
                        NavigationLink(destination: TelaVacinas(pet:pet)) {
                            Label("Vacinas", systemImage: "syringe")
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.appLaranjaEscuro)
                                .foregroundColor(.black)
                                .bold()
                                .cornerRadius(10)
                        }
                    }
                    .padding(.horizontal)
                }
               // .navigationTitle("Detalhes do Pet")
            }
        }
    }
    
}
