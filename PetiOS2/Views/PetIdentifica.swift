//
//  PetIdentifica.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 18/05/25.
//

import SwiftUI

struct PetIdentifica: View {
    var petidentifica: PetViewModel = PetViewModel()
         
    var body: some View {
        NavigationStack{
            List{
                ForEach(petidentifica.petidentifica)
                    {petAtual in
                        NavigationLink {
                            PetLIstItem(pet: petAtual)                }label: {
                            PetLIstItem(pet: petAtual)
                        }
                    
                    
                }
            }
        }
    }
}

#Preview {
    PetIdentifica()
}
