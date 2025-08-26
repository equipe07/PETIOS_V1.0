import SwiftUI
import SwiftData

struct MeusPets: View {
    
    @Query var listaPet: [PetModel]
    
    var body: some View {
        NavigationStack {
            ZStack {
                // 🔹 Fundo personalizado
                PetFundo {
                   /* EmptyView()
                }
                .ignoresSafeArea()
                
                VStack {*/
                    // 🔹 Título
                    Text("Meus Pets")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.appMarrom)
                        .padding(.top, 0.5)
                    
                    // 🔹 Lista de Pets
                    List {
                        ForEach(listaPet) { petAtual in
                            NavigationLink(
                                destination: EditaPet(pet: petAtual, titulo: "Editar Pet")
                            ) {
                                PetLIstItem(pet: petAtual)
                            }
                        }
                    }
                    .scrollContentBackground(.hidden)
                    .background(.clear)
                    .frame(maxWidth: 450, maxHeight: 800)
                   // .navigationTitle("Meus Pets")
                   // .navigationBarTitleDisplayMode(.inline)
                    //.safeAreaInset(edge: .bottom){
                        Botao(
                            nomeBotao: "Adicionar",
                            tela: CadastraPet()
                        )
                        .padding(.bottom, 10)
                    }
                }
            }
        }
    }


#Preview {
    MeusPets()
}

/*import SwiftUI
import SwiftData

struct MeusPets: View {
    
    @Query var listaPet: [PetModel]
    
    var body: some View {
        
        NavigationStack {
            ZStack {
                // 🔹 Fundo sempre preenchendo a tela
                PetFundo{(
                    Text("Meus Pets")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.appMarrom)) }                   .ignoresSafeArea()
                
                VStack {
                    Text("Meus Pets")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.appMarrom)
                    
                    // 🔹 Lista ocupa todo o espaço disponível
                    List {
                        ForEach(listaPet) { petAtual in
                            NavigationLink(
                                destination: EditaPet(pet: petAtual, titulo: "Editar Pet")
                            ) {
                                PetLIstItem(pet: petAtual)
                            } //fim PetLIstItem
                        }//fim do ForEach
                     //fim do list
                    .scrollContentBackground(.hidden) // 🔹 remove o cinza padrão
                    .background(Color.clear)         // 🔹 fundo transparente
                        
                } //fim do list
                .padding(.bottom, 60) // 🔹 dá espaço para não sobrepor o botão
            }
                // 🔹 Botão fixo no rodapé
                VStack {
                    Spacer()
                    Botao(
                        nomeBotao: "Adicionar",
                        tela: CadastraPet()
                    )
                    .padding(.bottom, 10)
                } //fim do VStack botao
            }
        }
    }


#Preview {
    MeusPets()
}
*/


/*import SwiftUI
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
                        //ScrollView{
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
                }
                
                Botao(nomeBotao: "Adicionar",
                      tela: CadastraPet(//listaPets:listaPets
                                       ))
                
            } // fim do petfundo
        }//fim do navigation stack
    
} //fim do View
//fm dos meus pets

#Preview {
    MeusPets()
}
*/
