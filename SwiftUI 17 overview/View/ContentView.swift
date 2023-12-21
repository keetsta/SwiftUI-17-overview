//
//  ContentView.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ScrollViewList()
                } label: {
                    Label("ScrollView", systemImage: "rectangle.grid.1x2.fill")
                }
                
                NavigationLink {
                    ShadersList()
                } label: {
                    Label("Metal Shaders", systemImage: "circle.lefthalf.filled.righthalf.striped.horizontal")
                }
                
                NavigationLink {
                    VisualEffectsList()
                } label: {
                    Label("Visual Effects", systemImage: "star.square.on.square.fill")
                }
                
                NavigationLink {
                    IconsAndTextList()
                } label: {
                    Label("Icons And Text", systemImage: "character")
                }
            }
            .navigationTitle("Main")
        }
    }
}

#Preview {
    ContentView()
}
