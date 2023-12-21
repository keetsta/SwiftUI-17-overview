//
//  VisualEffectExample2.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct VisualEffectExample2: View {
    @State private var rotationAmount = 0.0

    var body: some View {
        Grid {
            ForEach(0..<3) { _ in
                GridRow {
                    ForEach(0..<3) { _ in
                        Circle()
                            .fill(.green)
                            .frame(width: 100, height: 100)
                            .visualEffect { content, proxy in
                                content.hueRotation(.degrees(proxy.frame(in: .global).midY / 2))
                            }
                    }
                }
            }
        }
        .rotationEffect(.degrees(rotationAmount))
        .onAppear {
            withAnimation(.linear(duration: 5).repeatForever(autoreverses: false)) {
                rotationAmount = 360
            }
        }
    }
}

#Preview {
    VisualEffectExample2()
}
