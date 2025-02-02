//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by matteo on 30/01/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var image = ""
    @State private var imageNumber = 0
    
    
    
    
    var body: some View {
        VStack {
            Spacer()
            
            Image(image)
                .resizable()
                .scaledToFit()
                .clipShape(RoundedRectangle(cornerRadius: 50))
                .shadow(radius: 10)
            
            
            Spacer()
            
            
            Button("Press Me!") {
                
                if imageNumber > 9 {
                    imageNumber = 0
                    image = "image\(imageNumber)"
                    imageNumber += 1
                    
                }else{
                    image = "image\(imageNumber)"
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
