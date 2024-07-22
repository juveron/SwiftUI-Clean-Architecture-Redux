//
//  Sprites.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import Foundation

struct Sprites: Codable {
    let regular: String
    let shiny: String
    let gmax: GmaxSprites?
}

struct GmaxSprites: Codable {
    let regular: String
    let shiny: String
}
