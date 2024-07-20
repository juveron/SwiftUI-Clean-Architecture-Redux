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
        HStack(alignment: .center) {
            Text(text)
                .foregroundStyle(.primaryApp)
                .padding()
                .font(.bigSize)
        }
        .background(Color.secondaryBackgroundApp)
        .border(Color.secondaryBackgroundApp, width: 4)
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    TitleCells()
}
