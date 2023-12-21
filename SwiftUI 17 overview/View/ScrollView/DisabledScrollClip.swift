//
//  DisabledScrollClip.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct DisabledScrollClip: View {
    var body: some View {
        VStack {
            Text("Fixed at the top")
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(.green)
                .foregroundStyle(.white)
            
            ScrollView {
                ForEach(0..<5) { _ in
                    Text("Scrolling")
                        .frame(maxWidth: .infinity)
                        .frame(height: 200)
                        .background(.blue)
                        .foregroundStyle(.white)
                }
            }
            .scrollClipDisabled()
            
            Text("Fixed at the bottom")
                .frame(maxWidth: .infinity)
                .frame(height: 100)
                .background(.green)
                .foregroundStyle(.white)
        }
    }
}

#Preview {
    DisabledScrollClip()
}
