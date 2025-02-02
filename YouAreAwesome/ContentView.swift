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
            Spacer()
            
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .shadow(radius: 10)
            
            Text(text)
                .fontWeight(.heavy)
                .foregroundStyle(Color.red)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
            
            
            Spacer()
            
            
            Button("Press Me!") {
                
                if imageNumber > 9 {
                    imageNumber = 0
                    image = "image\(imageNumber)"
                    text = names[imageNumber]
                    imageNumber += 1
                    
                    
                }else{
                    image = "image\(imageNumber)"
                    text = names[imageNumber]
                    imageNumber += 1
                }
                
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
