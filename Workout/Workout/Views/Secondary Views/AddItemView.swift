//
//  AddItemView.swift
//  Workout
//
//  Created by Brady Chin on 2023.06.02.
//

import SwiftUI

struct AddItemView: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 10)
            .foregroundColor(.gray)
            .opacity(0.5)
            .frame(height: 50)
    }
}

struct AddItemView_Previews: PreviewProvider {
    static var previews: some View {
        AddItemView()
    }
}
