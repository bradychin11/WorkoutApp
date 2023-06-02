//
//  ButtonLabel.swift
//  Workout
//
//  Created by Brady Chin on 2023.06.02.
//

import SwiftUI

struct ButtonLabel: View {
    var body: some View {
        Image(systemName: "plus.app")
            .resizable()
            .scaledToFit()
            .frame(width: 20)
            .foregroundColor(.primary)
    }
}

struct ButtonLabel_Previews: PreviewProvider {
    static var previews: some View {
        ButtonLabel()
    }
}
