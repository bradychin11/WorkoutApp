//
//  ViewModel.swift
//  Workout
//
//  Created by Brady Chin on 2023.06.01.
//

import SwiftUI

final class ViewModel: ObservableObject {
    @Published var plans: [Plan] = []
    
    func addPlan(_ item: String) {
        let plan = Plan(name: item, exercise: [])
        plans.insert(plan, at: 0)
    }
    func addExercise() {
        
    }
}
