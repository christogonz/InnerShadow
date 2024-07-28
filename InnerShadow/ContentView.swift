//
//  ContentView.swift
//  InnerShadow
//
//  Created by Christopher Gonzalez on 2024-07-28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.radialGradient(
                    colors: [Color("RectangleColor"), .black],
                    center: .center,
                    startRadius: 1,
                    endRadius: 400))
                .ignoresSafeArea()
            
            Circle()
                .foregroundStyle(.linearGradient(
                    colors: [.black.opacity(0.5), .black.opacity(0.0) ],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                    .shadow(.inner(color: .white.opacity(0.5), radius: 0, x: 1,y: 1))
                    .shadow(.inner(color: .black, radius: 5, x: -10, y: -10))
                )
                .padding(40)
            
            Circle()
                .foregroundStyle(.linearGradient(
                    colors: [.black.opacity(0.5), .black.opacity(0.0)],
                    startPoint: .topLeading,
                    endPoint: .bottomTrailing
                )
                    .shadow(.inner(color: .white.opacity(0.5), radius: 0, x: -1, y: -1))
                    .shadow(.inner(color: .black, radius: 10, x: 10, y: 10))
                )
                .padding(60)
            
            
            VStack {
                Image(systemName: "aqi.medium")
                Text("Google")
                Text("AI")
                    .font(.title)
            }
            .font(.system(size: 50, weight: .bold))
            .foregroundStyle(.blue.gradient.shadow(.inner(color: .white.opacity(0.3), radius: 3, x: 1, y: 1))
            .shadow(.drop(radius: 5, x: 5, y: 5))
            )
        }
    }
}

#Preview {
    ContentView()
}
