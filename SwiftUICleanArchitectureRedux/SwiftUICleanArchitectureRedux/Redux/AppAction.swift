//
//  AppAction.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import Foundation

enum AppAction {
    case pokemonAction(PokemonAction)
}

enum PokemonAction {
    case fetchPokemon(name: String)
    case setPokemon(Pokemon)
    case setError(Error)
}
