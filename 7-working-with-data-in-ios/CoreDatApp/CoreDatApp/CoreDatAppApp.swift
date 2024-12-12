//
//  CoreDatAppApp.swift
//  CoreDatApp
//
//  Created by Mehmet Tarhan on 12.12.2024.
//

import SwiftUI

@main
struct CoreDatAppApp: App {
    @StateObject private var dataController = DataController()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, dataController.container.viewContext)
        }
    }
}
