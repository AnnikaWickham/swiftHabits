//
//  ContentView.swift
//  habitTracker
//
//  Created by Annika Wickham on 8/17/26.
//

import SwiftUI

struct ContentView: View {
    @State private var habits: [Habit] =
    [
        Habit(name: "Habit1", colorHex: "#ffffff", occurrences: [Occurrence(date: Date.now, percent: 100, description: "")]),
        Habit(name: "Habit2", colorHex: "#ffffff", occurrences: [Occurrence(date: Date.distantFuture, percent: 60, description: "habit2 descript")]),
        Habit(name: "Habit3", colorHex: "#ffffff", occurrences: [Occurrence(date: Date.now, percent: 100, description: "")])
    ]
    @State private var test: String = "HI"
    
    var body: some View {
        ZStack {
            Color.gray.brightness(-0.3)
                .ignoresSafeArea()
            VStack {
                Button("Add Habit") {
                    self.habits.append(Habit(name: "NEW HABIT", colorHex: "#fff10f"))
                    test = self.habits.map { $0.name }.joined(separator: ", ")
                }
                .buttonStyle(.borderedProminent)
                .tint(.black) // Changes the fill color
                Button("2") {
                    test = String(habits[1].occurrences[0].date.formatted())
                }
                .buttonStyle(.borderedProminent)
                .tint(.black) // Changes the fill color
                Button("3") {
                    test = String(habits[2].occurrences[0].date.formatted())
                }
                .buttonStyle(.borderedProminent)
                .tint(.black) // Changes the fill color
                Text(test)
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
