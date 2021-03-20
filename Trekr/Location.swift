//
//  Location.swift
//  Trekr
//
//  Created by Andrey Trubiczyn on 26.02.2021.
//

import Foundation

struct Location: Decodable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
}
