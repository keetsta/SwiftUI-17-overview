//
//  ShadersListView.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct ShadersList: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ShaderExample1()
                } label: {
                    Text("Example 1")
                }
                
                NavigationLink {
                    ShaderExample2()
                } label: {
                    Text("Example 2")
                }
                
                NavigationLink {
                    ShaderExample3()
                } label: {
                    Text("Example 3")
                }
                
                NavigationLink {
                    ShaderExample4()
                } label: {
                    Text("Example 4")
                }
                
                NavigationLink {
                    ShaderExample5()
                } label: {
                    Text("Example 5")
                }
            }
            .navigationTitle("Shaders")
        }
    }
}

#Preview {
    ShadersList()
}
