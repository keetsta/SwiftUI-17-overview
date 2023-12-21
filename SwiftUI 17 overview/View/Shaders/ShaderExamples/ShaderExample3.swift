//
//  ShaderExample3.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct ShaderExample3: View {
    var body: some View {
        Image(systemName: "figure.run.circle.fill")
            .font(.system(size: 300))
            .layerEffect(ShaderLibrary.pixellate(.float(10)), maxSampleOffset: .zero)
    }
}

#Preview {
    ShaderExample3()
}
