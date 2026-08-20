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
            HStack {
                Button("1") {
                    test = String(habits[0].occurrences[0].date.formatted())
                }
                .buttonStyle(.borderedProminent)
                .tint(.blue) // Changes the fill color
                Button("2") {
                    test = String(habits[1].occurrences[0].date.formatted())
                }
                .buttonStyle(.borderedProminent)
                .tint(.pink) // Changes the fill color
                Button("3") {
                    test = String(habits[2].occurrences[0].date.formatted())
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
