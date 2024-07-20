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
            GeneralInformationsCell().padding(.horizontal, 8).frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
//            Text("Hello, World!").foregroundStyle(.primaryApp).background(.secondaryBackgroundApp)
        }
        .padding(12)
        .background(.primaryBackgroundApp)
        .clipShape(RoundedRectangle(cornerRadius: 12))
    }
}

#Preview {
    PokemonDetails()
}
