//
//  ScrollMagin.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct ScrollMargin: View {
    var body: some View {
        ScrollView {
            ForEach(0..<50) { index in
                Text("Item \(index)")
                    .frame(maxWidth: .infinity)
                    .foregroundStyle(.white)
                    .background(.blue)
            }
        }
        .contentMargins(50, for: .scrollContent)
        .contentMargins(30, for: .scrollIndicators)
    }
}

#Preview {
    ScrollMargin()
}
