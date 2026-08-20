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
            HStack {
                Button("1") {
                    test = String(habits[0].occurrences[0].date.formatted())
                }
                .buttonStyle(.borderedProminent)
                .tint(.purple) // Changes the fill color
                Button("2") {
                    test = habits[1].name
                }
                .buttonStyle(.borderedProminent)
                .tint(.purple) // Changes the fill color
                Button("3") {
                    test = habits[2].name
                }
                .buttonStyle(.borderedProminent)
                .tint(.purple) // Changes the fill color
            }
            Text(test)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
