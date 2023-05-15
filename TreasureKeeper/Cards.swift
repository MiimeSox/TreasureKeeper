//
//  Cards.swift
//  TreasureKeeper
//
//  Created by Malte Schumacher on 15.05.23.
//

import Foundation

struct Cards: Codable, Identifiable {
    let id: String
    let name: String
    let type: String
    let expansion: String
    let number: String
    let rarity: String
    let artist: String
    let summary: String
    
    var image: String {
        "\(id)"
    }

}
