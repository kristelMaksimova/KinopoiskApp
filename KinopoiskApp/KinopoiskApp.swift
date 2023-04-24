//
//  KinopoiskAppApp.swift
//  KinopoiskApp
//
//  Created by Kristi on 24.04.2023.
//

import SwiftUI

@main
struct KinopoiskAppApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView(selectedFilms: Films.getFilms())
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
