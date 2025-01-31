//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by matteo on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var messageImage = ""
    @State private var message = ""
    
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(systemName: messageImage)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
            
            Spacer()
            
            
            Button("Press Me!") {
                
                let message1 = "You are awesome!"
                let message2 = "You are great!"
                let messageImage1 = "sun.max"
                let messageImage2 = "hand.thumbsup"
                
                
                message = message == message1 ? message2 : message1
                messageImage = messageImage == messageImage1 ? messageImage2 : messageImage1
                
            }
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
