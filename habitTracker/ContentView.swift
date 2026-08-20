//
//  ContentView.swift
//  habitTracker
//
//  Created by Annika Wickham on 8/17/26.
//

import SwiftUI

struct ContentView: View {
    var habits: [Habit] =
    [
        Habit(name: "Habit1", colorHex: "#ffffff", occurrences: [Occurrence(date: Date.now, percent: 100, description: "")]),
        Habit(name: "Habit2", colorHex: "#ffffff", occurrences: [Occurrence(date: Date.distantFuture, percent: 60, description: "habit2 descript")]),
        Habit(name: "Habit3", colorHex: "#ffffff", occurrences: [Occurrence(date: Date.now, percent: 100, description: "")])
    ]
    @State private var test: String = "HI"
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("OKAY, world!")
            Button("Button") {
                test = "BYE"
            }
            .buttonStyle(.borderedProminent)
            .tint(.purple) // Changes the fill color
            Text(test)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
