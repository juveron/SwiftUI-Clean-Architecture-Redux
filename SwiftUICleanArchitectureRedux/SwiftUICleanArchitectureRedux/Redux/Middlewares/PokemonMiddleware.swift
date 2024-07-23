//
//  PokemonMiddleware.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 23/07/2024.
//

import Combine
import Foundation

func pokemonMiddleware(networkManager: NetworkManager) -> Middleware<AppState, AppAction> {
    return { state, action in
        guard case .pokemonAction(let pokemonAction) = action else {
            return nil
        }

        switch pokemonAction {
        case .fetchPokemon(let name):
            return networkManager.fetchPokemon(name: name)
                .map { AppAction.pokemonAction(.setPokemon($0)) }
                .catch { Just(AppAction.pokemonAction(.setError($0))) }
                .eraseToAnyPublisher()
        case .setPokemon, .setError:
            return nil
        }
    }
}
