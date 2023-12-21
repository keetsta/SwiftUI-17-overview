//
//  TextVew.swift
//  SwiftUI 17 overview
//
//  Created by keet on 22.12.2023.
//

import SwiftUI

enum AnimationPhase: CaseIterable {
    case start, middle, end
}

struct TextView: View {
    @State private var scaleUp = false
    @State private var fadeOut = false
    @State private var animationStep = 0
    
    var body: some View {
        VStack {
            Button("Tap Me!") {
                withAnimation {
                    scaleUp = true
                } completion: {
                    withAnimation {
                        fadeOut = true
                    }
                }
            }
            .scaleEffect(scaleUp ? 3 : 1)
            .opacity(fadeOut ? 0 : 1)
            .padding(.bottom, 30)
            
            VStack(spacing: 50) {
                PhaseAnimator([0, 1, 3]) { value in
                    Text("Hello, world!")
                        .font(.caption)
                        .scaleEffect(value)
                        .opacity(value == 1 ? 1 : 0)
                        .padding()

                    Text("Goodbye, world!")
                        .font(.caption)
                        .scaleEffect(3 - value)
                        .opacity(value == 1 ? 1 : 0)
                }
            }
            .padding(.bottom, 50)
            
            Button("Tap Me!") {
                animationStep += 1
            }
            .font(.title)
            .phaseAnimator(AnimationPhase.allCases, trigger: animationStep) { content, phase in
                content
                    .blur(radius: phase == .start ? 0 : 10)
                    .scaleEffect(phase == .middle ? 3 : 1)
            }
        }
    }
}

#Preview {
    TextView()
}
