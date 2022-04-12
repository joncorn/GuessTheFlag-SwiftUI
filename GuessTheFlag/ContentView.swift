//
//  ContentView.swift
//  GuessTheFlag
//
//  Created by Jon Corn on 4/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        // to add multiple text elements, they need to be contained in a stack
        // Vstack meaning up-and-down orentation
//        VStack(alignment: .leading) {
//            Text("Hello, world!")
//            Text("This is another text view")
        // Created a grid using VStacks and HStacks
        VStack {
            HStack(spacing: 20) {
                Text("hi")
                Text("hi")
                Text("hi")
            }
            HStack(spacing: 20) {
                Text("hi")
                Text("hi")
                Text("hi")
            }
            HStack(spacing: 20) {
                Text("hi")
                Text("hi")
                Text("hi")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
