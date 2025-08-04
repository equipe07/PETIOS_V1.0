import SwiftUI

struct MeusPets: View {
    var listaPets: PetViewModel = PetViewModel()

    var body: some View {
        NavigationStack {
            PetFundo{
                Text("Meus Pets")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.appMarrom)

                
                List {
                    ForEach(listaPets.pets) { petAtual in
                        NavigationLink(destination: CadastraPet(pet: petAtual,titulo: "Editar Pet")) {
                            PetLIstItem(pet: petAtual)
                        }//fim do navigationlink
                    }//fim do ForEach
                } //fim do List
                .frame(maxWidth: 500)
                .scrollContentBackground(.hidden)
                .background(.clear)
                Botao(nomeBotao: "Adicionar",
                      tela: CadastraPet(pet: PetModel(
                        especie: "",
                        raca: "",
                        nome: "",
                        nascimento:Date(),
                        porte: "",
                        sexo: "",
                        cor: "",
                        castrado: false,
                        falecido: false))
                )
               
            } // fim do petfundo
        }//fim do navigation stack
    } //fim do View
} //fm dos meus pets

#Preview {
    MeusPets()
}
