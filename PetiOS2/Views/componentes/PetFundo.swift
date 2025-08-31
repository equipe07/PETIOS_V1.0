
//
//  PetFundo.swift
//  PetiOSv4
//
//  Created by iredefbmac_26 on 02/07/25.
//

import SwiftUI

struct PetFundo<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        ZStack {
            // Fundo branco
            Color.white
                .ignoresSafeArea()
            
            // Círculo laranja no canto superior direito
                
                
                //Círculo Superior Direito
                               
                Circle()
                    .fill(Color.appCanela)
                    .frame(width: 200, height: 200) // Ajuste o tamanho do círculo conforme necessário
                    .offset(x: UIScreen.main.bounds.width / 2 - 40, y: -UIScreen.main.bounds.height / 2 + 40) // Posiciona no canto superior direito
                //Logo PetiOS
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 200, height: 200)
                  //  .padding(0.5)
                    //.offset(x: -40)
                    .offset(y: 20)
                    .offset(x: UIScreen.main.bounds.width / 2 - 200, y: -UIScreen.main.bounds.height / 2 + 100)
                    .foregroundColor(.gray)
            
            
            // Círculo laranja no canto inferior esquerdo
            Circle()
                .fill(Color.orange)
                .frame(width: 200, height: 200) // Ajuste o tamanho do círculo para ser o mesmo
                .offset(x: -UIScreen.main.bounds.width / 2 + 40, y: UIScreen.main.bounds.height / 2 - 40) // Posiciona no canto inferior esquerdo
           
            
            
            Image("patinhas")
                .resizable()
                .scaledToFit()
                .frame(width: 300, height: 300)
                .padding(.leading, 200)
               // .offset(x: -6)
                .offset(y: 325)
                .foregroundColor(.gray)
            

            VStack {
                Spacer().frame(height: 50)
                content
            }
        }
    }
}

#Preview {
    PetFundo{
        Image( "logo") // Exemplo de imagem de sistema
                    .resizable()
                    .scaledToFit()
                    .frame(width: 500, height: 500)
                    .foregroundColor(.gray) // Cor do ícone
    }
}
