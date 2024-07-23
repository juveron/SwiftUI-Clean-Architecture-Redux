//
//  PokemonState.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 23/07/2024.
//

import Foundation

struct PokemonState {
    var pokemon: Pokemon?
    var isLoading: Bool = false
    var error: String?
}
