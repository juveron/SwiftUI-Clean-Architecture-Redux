//
//  GeneralInformationsCell.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 18/07/2024.
//

import SwiftUI

struct GeneralInformationsCell: View {
    var body: some View {
        VStack {
            TitleCells(text: "Informations General")
            FormCells(text1: "Numéro du Pokedex", text2: "#1 - 1er génération")
            FormCells(text1: "Numéro du Pokedex", text2: "#1 - 1er génération")
            FormCells(text1: "Numéro du Pokedex", text2: "#1 - 1er génération")
            FormCells(text1: "Numéro du Pokedex", text2: "#1 - 1er génération")
            FormCells(text1: "Numéro du Pokedex", text2: "#1 - 1er génération")
            FormCells(text1: "Numéro du Pokedex", text2: "#1 - 1er génération")
            FormCells(text1: "Numéro du Pokedex", text2: "#1 - 1er génération")
        }
    }
}

#Preview {
    GeneralInformationsCell()
}
