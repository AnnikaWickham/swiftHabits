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
 - instead of making the user pick a color, have a random color be picked and the user can change the color later.
 - idk how but if a user inputs a date that already has an occurance, it like pulls up that occurance with the stuff they already put already filled in
        then they can like edit it, or delete it. but show their previous entry (idk how)
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
    
    // Make a delete button at the bottom when adding an occurance (or just the checkbox being unchecked)
    mutating func deleteOccurrance(date: Date) {
        occurrences.removeAll(where: { $0.date == date })
    }
    
    //if user doesnt select color, we pick a random one.
    mutating func randColor() {
        
    }
    
    //lets user change color after habit is already created
    mutating func changeColor(color: String) {
        colorHex = color
    }
}

