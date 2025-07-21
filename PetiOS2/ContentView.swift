//
//  ContentView.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 18/05/25.
//

import SwiftUI
import SwiftData


struct ContentView: View {
    var body: some View {
        VStack{
            Image(systemName: "globe").imageScale(.large)
            Text("PetiOS")
            HStack{
                Text("Digite seu nome")
                Button("Salvar"){
                    
                }
                .padding()
            }
            .padding()
        }
        .padding()
    }
}

#Preview {
    ContentView()
    
}
