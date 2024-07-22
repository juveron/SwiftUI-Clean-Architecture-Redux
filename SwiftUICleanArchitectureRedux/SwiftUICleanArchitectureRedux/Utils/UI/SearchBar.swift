//
//  SearchBar.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import SwiftUI

struct SearchBar: View {
    
    @State private var searchText = ""
    
    var body: some View {
        HStack(alignment: .center) {
            TextField("", text: $searchText, prompt: Text("Entrez le nom d'un Pokémon...").foregroundStyle(Color(.gray)))
                .padding()
                .cornerRadius(10)
                .foregroundColor(.primaryApp)
                .background(Color.primaryBackgroundApp)
                .font(.normalSize)
            
            Button(action: {
                print("Todo logic : \(searchText)")
            }) {
                Text("Rechercher")
                    .foregroundStyle(Color.primaryApp)
                    .background(Color.secondaryApp)
                    .padding(.horizontal)
                    .font(.normalSize).padding()
            }
        }
        .background(Color.secondaryApp)
        .cornerRadius(10)
    }
}

#Preview {
    SearchBar()
}

