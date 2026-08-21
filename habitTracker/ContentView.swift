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
    
    var body: some View {
        ZStack {
            Color.gray.brightness(-0.3)
                .ignoresSafeArea()
            VStack {
                Button("Add Habit") {
                    self.habits.append(Habit(name: "NEW HABIT", colorHex: "#fff10f"))
                }
                .buttonStyle(.borderedProminent)
                .tint(.black) // Changes the fill color
                ForEach(habits) { habit in
                    Button(habit.name) {
                        
                    }
                }
                .buttonStyle(.borderedProminent)
                .tint(.gray) // Changes the fill color
                
            }
            .padding()
        }
    }
}

#Preview {
    ContentView()
}
