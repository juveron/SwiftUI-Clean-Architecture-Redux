//
//  APIEndpoints.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 23/07/2024.
//

import Foundation

enum APIEndpoints {
    static func getPokemonURL(for name: String) -> URL? {
        return URL(string: "\(getPokemonRoute)\(name)")
    }
}
