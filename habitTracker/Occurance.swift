//
//  Occurance.swift
//  habitTracker
//
//  Created by Annika Wickham on 8/18/26.
//

import Foundation

struct Occurrence: Identifiable, Codable {
    var id: UUID = UUID()               // easy way to identify instances of this struct
    var date: Date                      // the day (idk if we use time or not) this occurance occured
    var percent: Double                 // 100% && 0% for yes/no habits, a value for percentage habits
    var occurrenceDescription: String?  // an optional description written by the user for this specific occurance
}
