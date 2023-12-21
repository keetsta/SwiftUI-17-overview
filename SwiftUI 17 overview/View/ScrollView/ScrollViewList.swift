//
//  ScrollViewList.swift
//  SwiftUI 17 overview
//
//  Created by keet on 21.12.2023.
//

import SwiftUI

struct ScrollViewList: View {
    var body: some View {
        NavigationStack {
            List {
                NavigationLink {
                    ViewAlignedBehavior()
                } label: {
                    Text("View Aligned Behavior")
                }
                
                NavigationLink {
                    PagingBehavior()
                } label: {
                    Text("Paging Behavior")
                }
                
                NavigationLink {
                    DisabledScrollClip()
                } label: {
                    Text("Scroll Clip Disabled")
                }
                
                NavigationLink {
                    ScrollMargin()
                } label: {
                    Text("Scroll Content Margin")
                }
                
                Section {
                    NavigationLink {
                        TransitionExample1()
                    } label: {
                        Text("Scroll Transition Example 1")
                    }
                    
                    NavigationLink {
                        TransitionExample2()
                    } label: {
                        Text("Scroll Transition Example 2")
                    }
                    
                    NavigationLink {
                        TransitionExample3()
                    } label: {
                        Text("Scroll Transition Example 3")
                    }
                } header: {
                    Label("Scroll Transition", systemImage: "star.fill")
                }
            }
            .navigationTitle("ScrollView")
        }
    }
}

#Preview {
    ScrollViewList()
}
