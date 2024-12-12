//
//  LittleLemonApp.swift
//  LittleLemon
//
//  Created by Mehmet Tarhan on 12.12.2024.
//

import SwiftUI

@main
struct LittleLemonApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            MainView().environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
