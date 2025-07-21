//
//  BotoesInferior.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 20/07/25.
//

import SwiftUI

import SwiftUI

import SwiftUI

struct Botao: View {
    let texto: String
    let largura: CGFloat
    let destino: AnyView
    
    // Construtor com valor padrão para "tela"
    init(
        nomeBotao: String,
        largura: CGFloat = 100,
        tela: some View = EmptyView()
    ) {
        self.texto = nomeBotao
        self.largura = largura
        self.destino = AnyView(tela)
    }
    
    var body: some View {
        HStack {
            NavigationLink(destination: destino) {
                ZStack {
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(Color.appLaranjaEscuro)
                        .frame(width: largura, height: 40)
                    Text(texto)
                        .foregroundColor(.black)
                        .bold()
                        .padding(2)
                }
            }
        }
        .padding()
    }
}

#Preview {
    Botao(nomeBotao: "Adicionar")
}
