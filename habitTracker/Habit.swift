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
 - figure out how date works
 - you literally got this, light work, fun project, dubs
 */

struct Habit: Identifiable, Codable {
    var id: UUID = UUID()                // easy way to identify instances of this struct
    var name: String                     // name of this habit chosen by the user
    var colorHex: String                 // color chosen by user to show this habit on the calendar
    var occurrences: [Occurrence] = []   // array of daily occurances for this particular habit
    
    
    // Takes the stuff needed for a new occurance and updates the occurrances array
    // *If an occurrance for the same date already exists, the new occurrance replaces the old one
    // Else it adds the occurrance to the current array
    mutating func newOccurrance(dateIn: Date, percentIn: Int, descriptionIn: String) {
        //finds the index of the first element with the same date (or nil if no elements match dates)
        if let index = occurrences.firstIndex(where: { $0.date == dateIn }) {
            occurrences[index].percent = percentIn
            occurrences[index].description = descriptionIn
        } else {
            occurrences.append(Occurrence(date: dateIn, percent: percentIn, description: descriptionIn))
        }
    }
}

