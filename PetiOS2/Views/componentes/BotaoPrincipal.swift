//
//  BotoesInferior.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 20/07/25.
//

import SwiftUI

import SwiftUI

import SwiftUI

struct BotaoPrincipal: View {
    let texto: String
    let largura: CGFloat
    let destino: AnyView
    let icon:String
    
    // Construtor com valor padrão para "tela"
    init(
        nomeBotao: String,
        largura: CGFloat = 100,
        tela: some View = EmptyView(),
        icon: String = "img6"
        
    ) {
        self.texto = nomeBotao
        self.largura = largura
        self.destino = AnyView(tela)
        self.icon=icon
    }
    
    var body: some View {
        ZStack
        {
            Image(icon)
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 100)
            .padding(.leading, 200)
            .offset(x: -6)
            .offset(y: -40)
            .foregroundColor(.gray)
        
        HStack {
            
            NavigationLink(destination: destino) {
                ZStack {
                    
                    RoundedRectangle(cornerRadius: 2           )
                        .foregroundStyle(Color.appLaranjaClaro)
                        .frame(width:300, height:50)
                        .clipShape(RoundedRectangle(cornerRadius:10))
                    Text(texto)
                        .foregroundColor(.black)
                        .font(.title)
                        .bold()
                    }
                }
            }
        }
    }
}

#Preview {
    Botao(nomeBotao: "Adicionar")
}
