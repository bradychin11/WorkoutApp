//
//  PlanView.swift
//  Workout
//
//  Created by Brady Chin on 2023.06.01.
//

import SwiftUI

struct PlanView: View {
    @StateObject private var viewModel = ViewModel()
    @State private var newPlan = ""
    var body: some View {
        NavigationView {
            VStack {
                ZStack {
                    AddItemView()
                    HStack {
                        TextField("Add Plan", text: $newPlan)
                        Button {
                            viewModel.addPlan(newPlan)
                            newPlan = ""
                        } label: { ButtonLabel() }
                    }
                    .padding()
                }
                List(viewModel.plans) { plan in
                    NavigationLink {
                        ExerciseView(viewModel: viewModel, plan: plan)
                    } label: {
                        Text(plan.name)
                            .font(.title2)
                            .foregroundColor(.primary)
                    }
                    
                }
                .listStyle(.inset)
            }
            .padding()
            .navigationTitle("Plans")
        }
    }
}

struct PlanView_Previews: PreviewProvider {
    static var previews: some View {
        PlanView()
    }
}
