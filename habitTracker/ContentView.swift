//
//  ContentView.swift
//  habitTracker
//
//  Created by Annika Wickham on 8/17/26.
//
//next make it so you can add occurances (by little check boxes or by clicking a habit (which pulls up a different screen)

import SwiftUI

struct ContentView: View {
    @State private var habits: [Habit] = []
    @State private var showingAddHabit = false   // controls the sheet

    var body: some View {
        ZStack {
            Color.gray.brightness(-0.3)
                .ignoresSafeArea()
            VStack {
                ForEach(habits) { habit in
                    Text(habit.name)
                }
                Button("Add Habit") {
                    showingAddHabit = true            // just flip it to true
                }
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            .sheet(isPresented: $showingAddHabit) {   // $ = give the sheet a live connection
                AddHabitView(habits: $habits)         // pass habits as a binding too, so the new view can append to it
            }
        }
    }
}

struct AddHabitView: View {
    @Binding var habits: [Habit]        // "I don't own this array, but I can read/write it"
    @Environment(\.dismiss) var dismiss // lets this view close itself

    @State private var newName: String = ""
    @State private var newColor: Color = .blue  //default color is blue, all habits are blue unless changed

    var body: some View {
        NavigationStack {
            Form {
                TextField("Habit name", text: $newName)   // $ again — TextField needs to write back into newName
                ColorPicker("Color", selection: $newColor)
            }
            .navigationTitle("New Habit")
            .toolbar {
                ToolbarItem(placement: .confirmationAction) {
                    Button("Save") { //change color to actual color
                        habits.append(Habit(name: newName, colorHex: "#000000", occurrences: []))
                        dismiss()
                    }
                }
                ToolbarItem(placement: .cancellationAction) {
                    Button("Cancel") { dismiss() }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
