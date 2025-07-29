//
//  TPPet.swift
//  PetiOSv4
//
//  Created by iredefbmac_26 on 02/07/25.
//

import SwiftUI

struct TelaPrincipal: View {
    var body: some View {
       
        NavigationStack {
        PetFundo {
            
            Image("img6")
            .resizable()
            .scaledToFit()
            .frame(width: 200, height: 200)
            .padding(.leading, 200)
            .offset(x: -6)
            .offset(y: 125)                 .foregroundColor(.gray)
            
            VStack{
                    
                NavigationLink(destination: MeusPets()) { ZStack {
                RoundedRectangle(cornerRadius: 2           )
                .foregroundStyle(Color.appLaranjaClaro)
                .frame(width:300, height:50)
                    
                    
                    
                .clipShape(RoundedRectangle(cornerRadius:10))
                            Text("Meus Pets")
                                .foregroundColor(.black)
                                .font(.title)
                                .bold()
                                .padding(2)
                        }
                    }
                    Button{
                    } label:{
                        ZStack {
                            RoundedRectangle(cornerRadius: 2           )
                                .foregroundStyle(Color.appLaranjaClaro)
                                .frame(width:300, height:50)
                                .clipShape(RoundedRectangle(cornerRadius:10))
                            Text("Cadstrar Novo Pet")
                                .foregroundColor(.black)
                                .font(.title)
                                .bold()
                        }
                    }
                    Button{
                    } label:{
                        ZStack {
                            RoundedRectangle(cornerRadius: 2           )
                                .foregroundStyle(Color.appLaranjaClaro)
                                .frame(width:300, height:50)
                                .clipShape(RoundedRectangle(cornerRadius:10))
                            Text("Dados Tutor")
                                .foregroundColor(.black)
                                .font(.title)
                                .bold()
                        }
                    }
                }
            } //fim do navigationstack
        }
    }
}
    
#Preview {
        TelaPrincipal()
}

