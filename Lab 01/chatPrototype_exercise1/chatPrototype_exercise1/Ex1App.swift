//
//  Ex1App.swift
//  Ex1
//
//  Created by IM Student on 2025-11-02.
//

import SwiftUI
import CoreData

@main
struct Ex1App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
