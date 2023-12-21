//
//  TransitionExample2.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct TransitionExample2: View {
    var body: some View {
        ScrollView {
            ForEach(0..<15) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(.blue)
                    .frame(height: 80)
                    .shadow(radius: 3)
                    .scrollTransition { content, phase in
                        content
                            .hueRotation(.degrees(45 * phase.value))
                    }
                    .padding(.horizontal)
            }
        }

    }
}

#Preview {
    TransitionExample2()
}
