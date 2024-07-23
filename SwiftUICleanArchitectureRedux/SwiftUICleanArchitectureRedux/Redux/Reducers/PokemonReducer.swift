//
//  PokemonReducer.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 23/07/2024.
//

import Foundation

func pokemonReducer(state: inout PokemonState, action: PokemonAction) {
    switch action {
    case .fetchPokemon:
        state.isLoading = true
        state.error = nil
        
    case .setPokemon(let pokemon):
        state.isLoading = false
        state.pokemon = pokemon
        
    case .setError(let error):
        state.isLoading = false
        state.error = error.localizedDescription
    }
}
