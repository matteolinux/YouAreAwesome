//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by matteo on 30/01/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    
    @State private var image = ""
    @State private var text = ""
    @State private var imageNumber = 0
    @State private var names = ["matteo", "emma", "Sara", "Luca", "Denis", "ciccio", "zengordo", "Swartz", "Zecca", "Teddyefwefwefwfw ewfwef ewfwefwefwefw ewfwefwef"]
    @State private var lastText = ""
    @State private var lastImage = 10
    
    //create var audioplayer
    @State private var audioPlayer: AVAudioPlayer!
    
    
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
            
                var newText = names.randomElement()!
                var newImage = Int.random(in: 0...9)
                
                while newText == lastText || newImage == lastImage {
                    newText = names.randomElement()!
                    newImage = Int.random(in: 0...9)
                    
                }
                text = newText
                image = "image\(newImage)"
                lastText = newText
                lastImage = newImage
                
                //audio part
                let soundName = "sound0"
                guard let soundFile = NSDataAsset(name: soundName)else{
                    print("Error")
                    return
                }
                
                
                do {
                    audioPlayer = try AVAudioPlayer(data: soundFile.data)
                    audioPlayer.play()
                }catch{
                    print("error: \(error.localizedDescription)")
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
