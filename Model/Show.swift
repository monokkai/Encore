//
//  Show.swift
//  Encore
//
//  Created by Diegø Määjer on 09/09/2026.
//

import Foundation

enum ShowStatus {
    case attended
    case upcoming
}

struct Show: Identifiable {
    var artistName: String
    var venueName: String
    var city: String
    var date: Date
    var status: ShowStatus
    
    let id = UUID()
}
