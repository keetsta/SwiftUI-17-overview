//
//  ShaderExample1.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct ShaderExample1: View {
    var body: some View {
        Image(systemName: "figure.run.circle.fill")
            .font(.system(size: 300))
            .colorEffect(ShaderLibrary.checkerboard(.float(10), .color(.blue)))
    }
}

#Preview {
    ShaderExample1()
}
