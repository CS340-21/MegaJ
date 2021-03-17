//
//  MissionRecipeApp.swift
//  Shared
//
//  Created by Joshua Gray on 3/16/21.
//

import SwiftUI

@main
struct MissionRecipeApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
