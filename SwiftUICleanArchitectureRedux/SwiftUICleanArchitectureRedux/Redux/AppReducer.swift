//
//  AppReducer.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import Foundation

func appReducer(state: inout AppState, action: AppAction) {
    switch action {
    case .pokemonAction(let pokemonAction):
        pokemonReducer(state: &state.pokemonState, action: pokemonAction)
    }
}
