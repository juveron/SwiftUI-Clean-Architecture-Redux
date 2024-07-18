//
//  Pokemon.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import Foundation

// Modèle principal pour le Pokémon
struct Pokemon: Codable {
    let pokedexId: Int
    let generation: Int
    let category: String
    let name: Name
    let sprites: Sprites
    let types: [PokemonType]
    let talents: [Talent]
    let stats: Stats
    let resistances: [Resistance]
    let evolution: Evolution
    let height: String
    let weight: String
    let eggGroups: [String]
    let sexe: Sexe
    let catchRate: Int
    let level100: Int
    let formes: [Forme]?
    
    // Custom keys for snake_case JSON keys
    enum CodingKeys: String, CodingKey {
        case pokedexId = "pokedex_id"
        case generation
        case category
        case name
        case sprites
        case types
        case talents
        case stats
        case resistances
        case evolution
        case height
        case weight
        case eggGroups = "egg_groups"
        case sexe
        case catchRate = "catch_rate"
        case level100 = "level_100"
        case formes
    }
}
