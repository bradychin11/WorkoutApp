//
//  ExerciseView.swift
//  Workout
//
//  Created by Brady Chin on 2023.06.01.
//

import SwiftUI

struct ExerciseView: View {
    var viewModel: ViewModel
    var plan: Plan
    @State private var newExercise = ""
    @State private var isShowingDetailView = false
    var body: some View {
        VStack {
            ZStack {
                AddItemView()
                HStack {
                    TextField("Add Exercise", text: $newExercise)
                    Button {
                        viewModel.addExercise()
                        newExercise = ""
                    } label: { ButtonLabel() }
                }
                .padding()
            }
            
            List(plan.exercise) { exercise in
                Button {
                    isShowingDetailView = true
                } label: {
                    Text(exercise.name)
                        .font(.title2)
                        .foregroundColor(.primary)
                    
                }
            }
            .listStyle(.inset)
        }
        .navigationTitle(plan.name)
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isShowingDetailView) { ExerciseDetailView() }
        .padding()
    }
}

struct ExerciseView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ExerciseView(viewModel: ViewModel(), plan: Plan.samplePlans)
        }
    }
}
