//
//  IconsAndTextList.swift
//  SwiftUI 17 overview
//
//  Created by keet on 22.12.2023.
//

import SwiftUI

struct IconsAndTextList: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    IconsView()
                } label: {
                    Label("Icons", systemImage: "smiley")
                }
                
                NavigationLink {
                    TextView()
                } label: {
                    Label("Text", systemImage: "text.bubble")
                }
            }
            .navigationTitle("Icons And Text")
        }
    }
}

#Preview {
    IconsAndTextList()
}
