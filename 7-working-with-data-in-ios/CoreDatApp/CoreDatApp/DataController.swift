//
//  DataController.swift
//  CoreDatApp
//
//  Created by Mehmet Tarhan on 12.12.2024.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    let container = NSPersistentContainer(name: "CoreDataApp")
    
    init() {
        container.loadPersistentStores { description, error in
            if let error {
                print("CoreData failed to load: \(error.localizedDescription)")
            }
        }
    }
}
