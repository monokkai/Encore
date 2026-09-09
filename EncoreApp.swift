//
//  EncoreApp.swift
//  Encore
//
//  Created by Diegø Määjer on 09/09/2026.
//

import SwiftUI
import SwiftData

@main
struct EncoreApp: App {
    var body: some Scene {
        WindowGroup {
            AttendedView()
        }
        .modelContainer(for: Show.self)
    }
}
