//
//  ShaderExample2.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct ShaderExample2: View {
    let startDate = Date()

    var body: some View {
        TimelineView(.animation) { context in
            Image(systemName: "figure.run.circle.fill")
                .font(.system(size: 300))
                .colorEffect(ShaderLibrary.noise(.float(startDate.timeIntervalSinceNow)))
        }
    }
}

#Preview {
    ShaderExample2()
}
