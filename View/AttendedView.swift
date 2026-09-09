//
//  ContentView.swift
//  Encore
//
//  Created by Diegø Määjer on 09/09/2026.
//

import SwiftUI

struct AttendedView: View {
    @State private var shows: [Show] = []
    
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
                    shows.append(Show(artistName: "Radiohead", venueName: "Madison Square Garden", city: "New York", date: .now, status: .attended))
                }
            }
        }
    }
}

#Preview {
    AttendedView()
}
