//
//  Exercise.swift
//  Workout
//
//  Created by Brady Chin on 2023.06.01.
//

import SwiftUI

struct Exercise: Identifiable {
    let id = UUID()
    var name: String
    var sets: Int = 0
    var reps: Int = 0
    var weight: [Int] = []
}
