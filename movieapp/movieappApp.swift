//
//  movieappApp.swift
//  movieapp
//
//  Created by ABDO on 24/06/2025.
//

import SwiftUI

@main
struct movieappApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
