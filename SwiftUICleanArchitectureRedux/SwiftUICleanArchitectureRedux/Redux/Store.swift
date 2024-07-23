//
//  Store.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import Combine
import Foundation

final class Store<State, Action>: ObservableObject {
    @Published private(set) var state: State
    private let reducer: (inout State, Action) -> Void
    private let middlewares: [Middleware<State, Action>]
    private var cancellables: Set<AnyCancellable> = []
    
    init(initialSate: State, reducer: @escaping (inout State, Action) -> Void, middlewares: [Middleware<State, Action>]) {
        self.state = initialSate
        self.reducer = reducer
        self.middlewares = middlewares
    }
    
    func dispatch(_ action: Action) {
        reducer(&state, action)
        
        for middleware in middlewares {
            if let publisher = middleware(state, action) {
                publisher
                    .sink(receiveValue: dispatch)
                    .store(in: &cancellables)
            }
        }
    }
}
