//
//  iTourApp.swift
//  iTour
//
//  Created by doniyor normuxammedov on 20/01/24.
//

import SwiftData
import SwiftUI

@main
struct iTourApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(for: Destination.self)
    }
}
