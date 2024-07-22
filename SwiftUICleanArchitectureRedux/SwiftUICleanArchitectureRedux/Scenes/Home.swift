//
//  Home.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 20/07/2024.
//

import SwiftUI

struct Home: View {
    var body: some View {
        ZStack {
            Color.secondaryBackgroundApp.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            VStack {
                SearchBar().padding(10)
                PokemonDetails().padding(10)
            }
        }
    }
}

#Preview {
    Home()
}
