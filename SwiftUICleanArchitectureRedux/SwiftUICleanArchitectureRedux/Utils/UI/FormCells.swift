//
//  FormCells.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 20/07/2024.
//

import SwiftUI

struct FormCells: View {
    var text1: String = "aucune information:"
    var text2: String = "aucune information"
    
    var body: some View {
        HStack {
            Text(text1)
                .foregroundStyle(.secondaryApp)
                .padding()
                .font(.normalSize)
            Text(text2)
                .foregroundStyle(.primaryApp)
                .padding()
                .font(.normalSize)
        }
        .background(Color.primaryBackgroundApp)
        .border(Color.secondaryBackgroundApp, width: 1)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    FormCells()
}
