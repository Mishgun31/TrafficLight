//
//  CustomButton.swift
//  TrafficLight
//
//  Created by Михаил Мезенцев on 12.02.2022.
//

import SwiftUI

struct CustomButton: View {
    let title: String
    let action: () -> Void
    
    var body: some View {
        Button(action: action) {
            ZStack {
                Capsule()
                    .frame(height: 60)
                Text(title)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }
        }
        .overlay(
            Capsule()
                .stroke(Color.white, lineWidth: 4)
        )
        .padding()
    }
}

struct CustomButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomButton(title: "Start", action: {})
    }
}
