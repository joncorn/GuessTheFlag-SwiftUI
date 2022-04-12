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

struct ContentView: View {
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [.mint, .black]), center: .center, startRadius: 20, endRadius: 200)
            Text("hello")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
