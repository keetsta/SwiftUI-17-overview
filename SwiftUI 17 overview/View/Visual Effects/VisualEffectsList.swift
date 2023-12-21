//
//  VisualEffectsList.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct VisualEffectsList: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    VisualEffectExample1()
                } label: {
                    Text("Example 1")
                }
                
                NavigationLink {
                    VisualEffectExample2()
                } label: {
                    Text("Example 2")
                }
            }
            .navigationTitle("Visual Effects")
        }
    }
}

#Preview {
    VisualEffectsList()
}
