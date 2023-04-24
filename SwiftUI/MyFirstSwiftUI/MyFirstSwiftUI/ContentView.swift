//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by Taekwon Lee on 2023/04/23.

// This is a SwiftUI Tutorial from Sean Allen
// https://www.youtube.com/watch?v=HXoVSbwWUIk&t=15s

import SwiftUI

// Open Preview Shortcut: CMD OPTION ENTER

// Open Library: CMD SHIFT L

// VStack is Vertical Stack
// HStack is Horizontal Stack
// ZStack is Z-axis Stack -> depth or distance from the screen
struct ContentView: View {
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [.blue, .yellow, .orange]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
