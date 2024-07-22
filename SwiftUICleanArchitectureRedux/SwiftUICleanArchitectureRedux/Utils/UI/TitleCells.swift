//
//  TitleCells.swift
//  SwiftUICleanArchitectureRedux
//
//  Created by Jules Elferink on 20/07/2024.
//

import SwiftUI

struct TitleCells: View {
    var text: String = "aucune information"
    
    var body: some View {
        HStackLayout {
            Text(text)
                .foregroundStyle(.primaryApp)
                .font(.bigSize)
                .frame(maxWidth: .infinity)
                .padding(.vertical, 8)
        }
        .background(Color.secondaryBackgroundApp)
        .border(Color.secondaryBackgroundApp, width: 1)
        .padding(.vertical, 0)
    }
}

#Preview {
    TitleCells()
}
