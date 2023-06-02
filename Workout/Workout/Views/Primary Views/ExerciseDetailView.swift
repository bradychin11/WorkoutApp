//
//  ExerciseDetailView.swift
//  Workout
//
//  Created by Brady Chin on 2023.06.01.
//

import SwiftUI

struct ExerciseDetailView: View {
    @Environment(\.dismiss) var dismiss
    var body: some View {
        Button {
            dismiss()
        } label: {
            Text("dismiss")
        }
    }
}

struct ExerciseDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ExerciseDetailView()
    }
}
