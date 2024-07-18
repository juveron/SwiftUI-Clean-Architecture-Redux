//
//  Evolution.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import Foundation

// Modèle pour les évolutions
struct Evolution: Codable {
    let pre: [EvolutionDetail]?
    let next: [EvolutionDetail]?
    let mega: [EvolutionDetail]?
}

// Modèle pour les détails d'évolution
struct EvolutionDetail: Codable {
    let pokedexId: Int
    let name: String
    let condition: String?
    
    // Custom keys for snake_case JSON keys
    enum CodingKeys: String, CodingKey {
        case pokedexId = "pokedex_id"
        case name
        case condition
    }
}
