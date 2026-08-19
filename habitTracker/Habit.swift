//
//  Habit.swift
//  habitTracker
//
//  Created by Annika Wickham on 8/17/26.
// What is a habit??
//

import Foundation

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
    var id: UUID = UUID()                // easy way to identify instances of this struct
    var name: String                     // name of this habit chosen by the user
    var colorHex: String                 // color chosen by user to show this habit on the calendar
    var occurrences: [Occurrence] = []   // array of daily occurances for this particular habit
}

