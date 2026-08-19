//
//  Habit.swift
//  habitTracker
//
//  Created by Annika Wickham on 8/17/26.
// What is a habit??
//

import Foundation

/*
  Create Habit.swift, write your own version of the struct above (fix the percentage/date problem first)
  Create HabitType.swift (or keep in the same file) and decide the enum shape
  In ContentView.swift, hardcode an array of 2-3 sample Habits (no persistence yet) just to have test data
  Display that array as a simple List of habit names (plain text rows, no styling yet) — get data flowing to screen before making it pretty
  Add a checkbox/toggle per row that adds/removes today's date from that habit's completions
  Once that works, tackle the colored-box calendar grid view
  Then: color picker for new habits, add/create-habit screen, detail/expand view
  Persistence (saving to disk) once the UI works with hardcoded data
  Stretch: HealthKit, day-of-week insight logic, Screen Time (last, if at all)
 */


//Store just the date in a set for every date the habit was completed
struct Habit: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var colorHex: String          // store the user's chosen color as hex, convert to Color when displaying
    var percent: Int              // only used for percentage habits (e.g. screen time goal in minutes)
    var completions: Set<Date>    // yes/no: dates marked done. For percentage habits, think about whether this needs to pair a date WITH a value...
    var habitDescription: String? // optional, for the "expand for more" flow
}

