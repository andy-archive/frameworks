//
//  ContentView.swift
//  MyFirstSwiftUI
//
//  Created by Taekwon Lee on 2023/04/23.

// This project referred to Sean Allen's YouTube and made it in my style.
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
            LinearGradient(gradient: Gradient(colors: [.purple, .blue, .yellow, .orange]),
                           startPoint: .topLeading,
                           endPoint: .bottomTrailing)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Text("Seoul, Korea") // Text is a View!
                    .font(.system(size: 32, weight: .medium, design: .default)) // one of modifiers
                    .foregroundColor(.white)
                    .padding(30)
    //                .background(Color.green)
    //                .frame(width: 200, height: 200)
                VStack(spacing: 30) {
                    Image(systemName: "sun.max.fill") // from SF Symbols
                        .renderingMode(.original) // returns original image
                        .resizable() // make the image resizable
                        .aspectRatio(contentMode: .fit) // keep the aspect ratio but fits in frame
                        .frame(width: 120, height: 120)
//                        .padding(10)
                    Text("15.6°")
                        .font(.system(size: 50))
                        .foregroundColor(.white)
                        .padding(.bottom, 20)
                }
                HStack {
                    VStack {
                        Text("Mon")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.rain.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                            .padding(5)
                        Text("12.5°")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("Tue")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                            .padding(5)
                        Text("15.6°")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("Wed")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.sun.rain.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                            .padding(5)
                        Text("13.2°")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("Thu")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Image(systemName: "cloud.rain.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                            .padding(5)
                        Text("12.0°")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                    }
                    VStack {
                        Text("Fri")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                        Image(systemName: "sun.max.fill")
                            .renderingMode(.original)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 50)
                            .padding(5)
                        Text("18.3°")
                            .font(.system(size: 22))
                            .foregroundColor(.white)
                    }
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
