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

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.blue
                Color.red
            }
            
            Text("hi")
                .foregroundStyle(.secondary)
                .padding(50)
                .background(.ultraThinMaterial)
        }
        .ignoresSafeArea()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
