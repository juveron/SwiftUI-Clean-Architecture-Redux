//
//  Sprites.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import Foundation

// Modèle pour les sprites
struct Sprites: Codable {
    let regular: String
    let shiny: String
    let gmax: GmaxSprites?
}

// Modèle pour les sprites de Gmax
struct GmaxSprites: Codable {
    let regular: String
    let shiny: String
}
