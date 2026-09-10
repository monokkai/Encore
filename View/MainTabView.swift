//
//  MainTabView.swift
//  Encore
//
//  Created by Diegø Määjer on 10/09/2026.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Tab("Attended", systemImage: "music.mic") {
                AttendedView()
            }
            Tab("Upcoming", systemImage: "calendar") {
               UpcomingView()
            }
            Tab("Settings", systemImage: "gear") {
                SettingsView()
            }
        }
    }
}

#Preview {
    MainTabView()
}
