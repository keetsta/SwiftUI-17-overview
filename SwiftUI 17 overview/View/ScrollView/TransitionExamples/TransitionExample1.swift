//
//  TransitionExample1.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct TransitionExample1: View {
    var body: some View {
        ScrollView {
            ForEach(0..<15) { index in
                RoundedRectangle(cornerRadius: 25)
                    .fill(.blue)
                    .frame(height: 80)
                    .scrollTransition { content, phase in
                        content
                            .opacity(phase.isIdentity ? 1 : 0)
                            .scaleEffect(phase.isIdentity ? 1 : 0.75)
                            .blur(radius: phase.isIdentity ? 0 : 10)
                    }
                    .padding(.horizontal)
            }
        }
    }
}

#Preview {
    TransitionExample1()
}
