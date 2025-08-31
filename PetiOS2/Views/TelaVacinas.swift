import SwiftUI
import SwiftData

struct TelaVacinas: View
{
    var pet: PetModel	
    var body: some View
    {
        ZStack
        {
            PetFundo { }.ignoresSafeArea()
            VStack
            {
                Text("Vacinas de \(pet.nome)")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.appMarrom)
                    .padding(.top, 0.5)
                    
                // 🔹 Lista de Vacinas apenas do pet atual
                List
                {
                    ForEach(pet.vacinaPet) { vacinaAtual in
                        NavigationLink(
                            destination: EditaVacina(vacina: vacinaAtual)) {
                                VacinaLIstItem(vacina: vacinaAtual)
                        }
                    }
                }
                     .scrollContentBackground(.hidden)
                     .background(.clear)
                     .frame(maxWidth: 450, maxHeight: 600)
                     
                    // 🔹 Botão para adicionar vacina ao pet
                    /*NavigationLink(destination: CadastraVacina(pet:pet)) {
                        Label("Adicionar vacina", systemImage: "syringe")
                            .frame(maxWidth: .infinity)
                            .padding()
                            .background(Color.appLaranjaEscuro)
                            .foregroundColor(.black)
                            .bold()
                            .cornerRadius(10)
                    }*/
                    
                    Botao(
                     nomeBotao: "Adicionar",
                     tela: CadastraVacina(pet:pet)
                     )
                     //.padding(.bottom, 10)
                }
            }
    }
}


