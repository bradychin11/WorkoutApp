//
//  Plan.swift
//  Workout
//
//  Created by Brady Chin on 2023.06.01.
//

import SwiftUI

struct Plan: Identifiable {
    let id = UUID()
    var name: String
    var exercises: [Exercise]
    
    static let samplePlans = Plan(name: "Chest + Back", exercises: [Exercise(name: "Bench"), Exercise(name: "Incline Bench")])
}
