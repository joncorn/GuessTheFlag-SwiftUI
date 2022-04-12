//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jon Corn on 4/11/22.
//

import SwiftUI

// .primary refers to primary color for text
// color() has a lot of customization ability
// .foregroundStyle vs .foregroundColor
// Style lets color come through the text color

// LinearGradient
//LinearGradient(gradient: Gradient(stops: [
//    .init(color: .mint, location: 0.20),
//    .init(color: .pink, location: 0.80)
//]), startPoint: .top, endPoint: .bottom)

// Circular Gradient
//RadialGradient(gradient: Gradient(colors: [.blue, .black]), center: .center, startRadius: 20, endRadius: 200)

// Angular gradient
//AngularGradient(gradient: Gradient(colors: [.red, .yellow, .green, .blue, .purple, .red]), center: .center)

// Button w alert
//@State private var showingAlert = false
//var body: some View {
//    Button("show alert") {
//        showingAlert = true
//    }
//    .alert("Important message", isPresented: $showingAlert) {
//        Button("Delete", role: .destructive) { }
//        Button("Cancel", role: .cancel) { }
//    } message: {
//        Text("Please read this")
//    }
//}

struct ContentView: View {
    var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"]
    var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            Color.blue
                .ignoresSafeArea()
            
            VStack(spacing: 30) {
                VStack {
                    Text("Tap the flag of")
                        .foregroundColor(.white)
                    Text(countries[correctAnswer])
                        .foregroundColor(.white)
                }
                
                ForEach(0..<3) { number in
                    Button {
                        // flag was tapped
                        
                    } label: {
                        Image(countries[number])
                            .renderingMode(.original)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

