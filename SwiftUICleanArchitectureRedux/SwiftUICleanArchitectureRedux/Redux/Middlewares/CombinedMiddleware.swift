//
//  CombinedMiddleware.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 23/07/2024.
//

import Combine
import Foundation

func combinedMiddleware(networkManager: NetworkManager) ->  Middleware<AppState, AppAction> {
    let middlewares: [Middleware<AppState, AppAction>] = [
        pokemonMiddleware(networkManager: networkManager)
    ]
    
    return { state, action in
        let publishers = middlewares.compactMap { $0(state, action) }
        return Publishers.MergeMany(publishers).eraseToAnyPublisher()
    }
}
