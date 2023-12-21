//
//  IconsView.swift
//  SwiftUI 17 overview
//
//  Created by keet on 22.12.2023.
//

import SwiftUI

struct IconsView: View {
    @State private var petCount = 0
    @State private var isFavorite = false
    @State private var animationsRunning = false
    @State private var isFavorite1 = false
    
    var body: some View {
        VStack {
            Button(action: { petCount += 1 }) {
                Label("Pet the Dog", systemImage: "dog")
            }
            .symbolEffect(.bounce, value: petCount)
            .font(.title)
            .padding()
            
            Button(action: { isFavorite.toggle() }) {
                Label("Activate Inbox Zero", systemImage: "mail.stack")
            }
            .symbolEffect(.bounce.down, value: isFavorite)
            .font(.title)
            .padding()
            
            Button("Start Animations") {
                withAnimation {
                    animationsRunning.toggle()
                }
            }
            .font(.title)
            .padding(.bottom)
            
            VStack {
                HStack {
                    Image(systemName: "square.stack.3d.up")
                        .symbolEffect(.variableColor.iterative, value: animationsRunning)
                    
                    Image(systemName: "square.stack.3d.up")
                        .symbolEffect(.variableColor.cumulative, value: animationsRunning)
                    
                    Image(systemName: "square.stack.3d.up")
                        .symbolEffect(.variableColor.reversing.iterative, value: animationsRunning)
                    
                    Image(systemName: "square.stack.3d.up")
                        .symbolEffect(.variableColor.reversing.cumulative, value: animationsRunning)
                }
                
                HStack {
                    Image(systemName: "square.stack.3d.up")
                        .symbolEffect(.variableColor.iterative, options: .repeating, value: animationsRunning)
                    
                    Image(systemName: "square.stack.3d.up")
                        .symbolEffect(.variableColor.cumulative, options: .repeat(3), value: animationsRunning)
                    
                    Image(systemName: "square.stack.3d.up")
                        .symbolEffect(.variableColor.reversing.iterative, options: .speed(3), value: animationsRunning)
                    
                    Image(systemName: "square.stack.3d.up")
                        .symbolEffect(.variableColor.reversing.cumulative, options: .repeat(3).speed(3), value: animationsRunning)
                }
            }
            .font(.title)
            .padding(.bottom)
            
            VStack {
                Button {
                    withAnimation {
                        isFavorite1.toggle()
                    }
                } label: {
                    Label("Toggle Favorite", systemImage: isFavorite1 ? "checkmark": "heart")
                }
                .contentTransition(.symbolEffect(.replace))
            }
            .font(.title)
        }
    }
}

#Preview {
    IconsView()
}
