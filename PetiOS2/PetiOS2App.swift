//
//  PetiOS2App.swift
//  PetiOS2
//
//  Created by iredefbmac_26 on 18/05/25.
//

import SwiftUI
import SwiftData

@main
struct PetiOS2App: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            TelaPrincipal()
        }
        .modelContainer(sharedModelContainer)
    }
}
