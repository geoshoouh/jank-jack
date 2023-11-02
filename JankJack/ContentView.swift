//
//  ContentView.swift
//  Jank Jack
//
//  Created by Joshua Tate on 10/31/23.
//

import SwiftUI

let game: JankJackGame = JankJackGame();

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
