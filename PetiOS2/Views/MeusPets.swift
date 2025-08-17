import SwiftUI
import SwiftData

struct MeusPets: View {
    
    //modo passando a variavel atraves das interfaces
    //@State var listaPets = PetViewModel()
    
    // modo salvando no contexto
    @Query var  listaPet: [PetModel]
    
    var body: some View {
        NavigationStack {
            PetFundo{
                Text("Meus Pets")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.appMarrom)

                List {
                    ForEach(listaPet) { petAtual in
                        NavigationLink(destination: EditaPet(pet: petAtual,titulo: "Editar Pet")
                            //CadastraPet(listaPets:listaPets)
                                       
                        ) {
                            PetLIstItem(pet: petAtual)
                        }//fim do navigationlink
                    }//fim do ForEach
                } //fim do List
                .frame(maxWidth: 500)
                .scrollContentBackground(.hidden)
                .background(.clear)
                Botao(nomeBotao: "Adicionar",
                      tela: CadastraPet(//listaPets:listaPets
                                       ))
               
            } // fim do petfundo
        }//fim do navigation stack
    } //fim do View
} //fm dos meus pets

#Preview {
    MeusPets()
}
