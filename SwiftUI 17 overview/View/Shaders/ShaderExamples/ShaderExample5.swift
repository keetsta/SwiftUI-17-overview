//
//  ShaderExample5.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct ShaderExample5: View {
    @State private var strength = 3.0

    var body: some View {
        VStack {
            Image(systemName: "figure.run.circle.fill")
                .foregroundStyle(.linearGradient(colors: [.orange, .red], startPoint: .top, endPoint: .bottom))
                .font(.system(size: 300))
                .layerEffect(ShaderLibrary.emboss(.float(strength)), maxSampleOffset: .zero)

            Slider(value: $strength, in: 0...10)
        }
        .padding()
    }
}

#Preview {
    ShaderExample5()
}
