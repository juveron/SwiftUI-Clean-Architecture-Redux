//
//  Evolution.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import Foundation

struct Evolution: Codable {
    let pre: [EvolutionDetail]?
    let next: [EvolutionDetail]?
    let mega: [EvolutionDetail]?
}

struct EvolutionDetail: Codable {
    let pokedexId: Int
    let name: String
    let condition: String?
    
    enum CodingKeys: String, CodingKey {
        case pokedexId = "pokedex_id"
        case name
        case condition
    }
}
