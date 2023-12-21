//
//  VisualEffectExample1.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct VisualEffectExample1: View {
    var body: some View {
        ScrollView {
            ForEach(0..<100) { i in
                Text("Row \(i)")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                    .visualEffect { content, proxy in
                        content.blur(radius: blurAmount(for: proxy))
                    }
            }
        }
    }
    
    func blurAmount(for proxy: GeometryProxy) -> Double {
        let scrollViewHeight = proxy.bounds(of: .scrollView)?.height ?? 100
        let ourCenter = proxy.frame(in: .scrollView).midY
        let distanceFromCenter = abs(scrollViewHeight / 2 - ourCenter)
        return Double(distanceFromCenter) / 100
    }
}
#Preview {
    VisualEffectExample1()
}
