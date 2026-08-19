//
//  Habit.swift
//  habitTracker
//
//  Created by Annika Wickham on 8/17/26.
// What is a habit??
//

/*
 NOTES:
 - figure out what UUID is and how it works
 - whenever you add an occurance you have to make sure it doesnt exist yet (by looking at date)
    - if it already exists then edit it with the new info.
    - if it doesnt already exist, initillize it and add it to the habit array
 - figure out how date works
 - you literally got this, light work, fun project, dubs
 */

struct Habit: Identifiable, Codable {
    var id: UUID = UUID()
    var name: String
    var colorHex: String
    var occurrences: [Occurrence]   // array, not Set — for the reason above
}

