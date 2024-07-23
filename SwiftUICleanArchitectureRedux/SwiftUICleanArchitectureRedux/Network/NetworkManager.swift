//
//  NetworkManager.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 23/07/2024.
//

import Combine
import Foundation

class NetworkManager {
    
    private var cancellables: Set<AnyCancellable> = []
    
    /*
        [GET], this is the methode to fetch the whole data of one pokemon,
        for more informations see the Model Pokemon in Model/Pokemon.swift
    */
    func fetchPokemon(name: String) -> AnyPublisher<Pokemon, Error> {
        guard let url = APIEndpoints.getPokemonURL(for: name) else {
            return Fail(error: URLError(.badURL))
                .eraseToAnyPublisher()
        }
        
        return URLSession.shared.dataTaskPublisher(for: url)
            .map { $0.data }
            .decode(type: Pokemon.self, decoder: JSONDecoder())
            .receive(on: DispatchQueue.main)
            .eraseToAnyPublisher()
    }
}
