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
            Spacer()
            
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .frame(width: 200, height: 200)
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            HStack {
                Button("Awesome!") {
                    message = "Awesome!"
                }
                
                Button("Great") {
                    message = "Great!"
                }
                
            } // end Hstack
            .buttonStyle(.borderedProminent)
            .font(.title2)
            .tint(.orange)
            
            
            
        }// end Vstack
        .padding()
    }
}

#Preview {
    ContentView()
}
