//
//  Tip.swift
//  Trekr
//
//  Created by Andrey Trubiczyn on 26.02.2021.
//

import Foundation

struct Tip: Decodable {
    let text: String
    let children: [Tip]?
}
