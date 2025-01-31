//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by matteo on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var message = "I am a Programmer!"
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(message)
                .foregroundStyle(.red)
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Button("Click Me!") {
                message = "You clicked me!"
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
