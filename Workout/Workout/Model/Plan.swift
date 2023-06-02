//
//  Plan.swift
//  Workout
//
//  Created by Brady Chin on 2023.06.01.
//

import SwiftUI

struct Plan: Identifiable {
    let id = UUID()
    let name: String
    var exercise: [Exercise]
    
    static let samplePlans = Plan(name: "Chest + Back", exercise: [Exercise(name: "Bench"), Exercise(name: "Incline Bench")])
}
