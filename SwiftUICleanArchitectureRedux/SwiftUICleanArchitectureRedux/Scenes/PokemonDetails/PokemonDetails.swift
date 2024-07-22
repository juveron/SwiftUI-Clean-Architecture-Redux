//
//  PokemonDetails.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import SwiftUI

struct PokemonDetails: View {
    var body: some View {
        VStack(alignment: .center) {
            GeneralInformationsCell()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        }
        .padding(18)
        .background(.primaryBackgroundApp)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    PokemonDetails()
}
