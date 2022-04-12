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
    @State private var showingScore  = false
    @State private var scoreTitle    = ""
    @State private var currentWins   = 0
    @State private var currentLoss   = 0
    
    @State private var countries = ["Estonia", "France", "Germany", "Ireland", "Italy", "Nigeria", "Poland", "Russia", "Spain", "UK", "US"].shuffled()
    @State private var correctAnswer = Int.random(in: 0...2)
    
    var body: some View {
        ZStack {
            RadialGradient(stops: [
                .init(color: Color(red: 0.1, green: 0.2, blue: 0.45), location: 0.3),
                .init(color: Color(red: 0.76, green: 0.15, blue: 0.26), location: 0.3)
            ], center: .top, startRadius: 200, endRadius: 700)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Text("Guess the Flag")
                    .font(.largeTitle.bold())
                    .foregroundColor(.white)
                
                VStack(spacing: 15) {
                    VStack {
                        Text("Tap the flag of")
                            .foregroundStyle(.secondary)
                            .font(.subheadline.weight(.heavy))
                        
                        Text(countries[correctAnswer])
                            .font(.largeTitle.weight(.semibold))
                    }
                    
                    ForEach(0..<3) { number in
                        Button {
                            // flag was tapped
                            flagTapped(number)
                        } label: {
                            Image(countries[number])
                                .renderingMode(.original)
                                .clipShape(Capsule())
                                .shadow(radius: 5)
                        }
                    }
                }
                .frame(maxWidth: .infinity)
                .padding(.vertical, 20)
                .background(.regularMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 20))
                
                Spacer()
                Spacer()
                
                Text("Score: \(currentWins)")
                    .foregroundColor(.white)
                    .font(.title.bold())
                
                Spacer()
            }
            .padding()
            
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text("Current score: \(currentWins)")
        }
    }
    
    func flagTapped(_ number: Int) {
        if number == correctAnswer {
            scoreTitle = "Correct"
            addToWinCount()
        } else {
            scoreTitle = "Wrong"
            addToLossCount()
        }
        
        showingScore = true
    }
    
    func askQuestion() {
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
    }
    
    func addToWinCount() {
        currentWins += 1
    }
    
    func addToLossCount() {
        currentLoss += 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

