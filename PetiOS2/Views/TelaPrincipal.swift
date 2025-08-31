import SwiftUI
import SwiftData

struct TelaPrincipal: View {
    @Query var  listaTutor: [TutorModel]
    @Environment(\.modelContext) private var context

    
    var body: some View
    {
        
        NavigationStack
        {
           PetFundo
           {
            
                /*Image("img6")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .padding(.leading, 200)
                .offset(x: -6)
                .offset(y: 125)
                .foregroundColor(.gray)*/
                
                VStack
                {
                    Spacer()
                    /*NavigationLink(destination: MeusPets())
                    {
                        ZStack
                        {
                        RoundedRectangle(cornerRadius: 2           )
                            .foregroundStyle(Color.appLaranjaClaro)
                            .frame(width:300, height:50)
                        
                        
                        
                            .clipShape(RoundedRectangle(cornerRadius:10))
                        Text("Meus Pets")
                            .foregroundColor(.black)
                            .font(.title)
                            .bold()
                            .padding(10)
                        }
                    }*/
                    BotaoPrincipal(nomeBotao: "Meus Pets", tela: MeusPets(),icon:"cachorrinho")
                    
                    BotaoPrincipal(nomeBotao: "Cadastrar Pet",
                                   tela:CadastraPet(),icon:"catoi")
                                       
                    if let tutor = listaTutor.first
                    {
                        BotaoPrincipal(nomeBotao: "Dados Tutor",
                              tela:TutorEditar(tutor: tutor))
                    }
                    Spacer()
                   
                }//.border(Color.red, width: 2)//fim do vstack
            } //fim do petfundo
        }// fim do navigationstack
        .onAppear {
                if listaTutor.isEmpty {
                    let novoTutor = TutorModel(
                        nome: "",
                        email: "",
                        telefone: "",
                        sexo: "",
                        nascimento: Calendar.current.date(from: DateComponents(year: 2020, month: 1, day: 1))!,
                        pais: "Brasil",
                        cep: "",
                        endereco: "",
                        numero: "",
                        complemento: "",
                        bairro: "",
                        cidade: "",
                        estado: ""
                    )
                    context.insert(novoTutor)
                    try? context.save()
                }
            }
    }
}
    
#Preview {
        TelaPrincipal()
}
