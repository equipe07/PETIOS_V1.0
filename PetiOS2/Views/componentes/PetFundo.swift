//
//  PetFundo.swift
//  PetiOSv4
//
//  Created by iredefbmac_26 on 02/07/25.
//

/*import SwiftUI

struct PetFundo: View {
    var body: some View {
        ZStack {
            Image("AppFundo")
             	   .resizable()
                .scaledToFill()
                .ignoresSafeArea()
        }
    }
}*/

import SwiftUI

struct PetFundo<Content: View>: View {
    let content: Content

    init(@ViewBuilder content: () -> Content) {
        self.content = content()
    }

    var body: some View {
        ZStack {
            Image("AppFundo")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                Spacer().frame(height: 100)
                content
            }
        }
    }
}

#Preview {
    PetFundo{
        
    }
}
