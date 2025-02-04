//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by matteo on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var image = ""
    @State private var text = ""
    @State private var imageNumber = 0
    @State private var names = ["matteo", "emma", "Sara", "Luca", "Denis", "ciccio", "zengordo", "Swartz", "Zecca", "Teddyefwefwefwfw ewfwef ewfwefwefwefw ewfwefwef"]
    
    
    
    
    var body: some View {
        VStack {
            
            
            Text(text)
                .fontWeight(.heavy)
                .foregroundStyle(Color.red)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .minimumScaleFactor(0.50)
                .frame(height: 100)
              
                
            
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .shadow(radius: 10)
                .animation(.bouncy(duration: 0.2, extraBounce: 0.2), value: image)
            
            
            
            
            Spacer()
            
            
            Button("Press Me!") {
                
                text = names.randomElement()!
                image = "image\(Int.random(in: 0...9))"
                
            }
            .buttonStyle(.borderedProminent)
            .font(.title2)
            
            
            
            
        }// end Vstack
        .padding()
    }
}

#Preview {
    ContentView()
}
