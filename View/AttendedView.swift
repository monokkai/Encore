//
//  ContentView.swift
//  Encore
//
//  Created by Diegø Määjer on 09/09/2026.
//

import SwiftUI
import SwiftData

struct AttendedView: View {
    @Query private var shows: [Show]
    @Environment(\.modelContext) private var modelContext
    
    var body: some View {
        NavigationStack {
            List(shows) {
                show in
                VStack(alignment: .leading, spacing: 4) {
                    Text(show.artistName)
                    Text(show.venueName)
                }
            }
            .navigationTitle("Attended")
            .toolbar {
                Button("Add show!", systemImage: "plus") {
                    modelContext.insert(Show(artistName: "Radiohead", venueName: "Madison Square Garden", city: "New York", date: .now, status: .attended))
                }
            }
        }
    }
}

#Preview {
    AttendedView()
}
