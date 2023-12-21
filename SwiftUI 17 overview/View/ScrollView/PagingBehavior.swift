//
//  PagingBehavior.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct PagingBehavior: View {
    var body: some View {
        ScrollView {
            ForEach(0..<50) { index in
                Text("Item \(index)")
                    .font(.largeTitle)
                    .frame(maxWidth: .infinity)
                    .frame(height: 200)
                    .background(.blue)
                    .foregroundStyle(.white)
                    .clipShape(.rect(cornerRadius: 20))
                    .padding(.horizontal)
            }
        }
        .scrollTargetBehavior(.paging)
    }
}

#Preview {
    PagingBehavior()
}
