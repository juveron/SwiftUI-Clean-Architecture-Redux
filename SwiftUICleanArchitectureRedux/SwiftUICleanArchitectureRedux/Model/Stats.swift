//
//  Stats.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import Foundation

// Modèle pour les statistiques
struct Stats: Codable {
    let hp: Int
    let atk: Int
    let def: Int
    let speAtk: Int
    let speDef: Int
    let vit: Int
    
    // Custom keys for snake_case JSON keys
    enum CodingKeys: String, CodingKey {
        case hp
        case atk
        case def
        case speAtk = "spe_atk"
        case speDef = "spe_def"
        case vit
    }
}
