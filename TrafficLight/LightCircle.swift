//
//  LightCircle.swift
//  TrafficLight
//
//  Created by Михаил Мезенцев on 12.02.2022.
//

import SwiftUI

struct LightCircle: View {
    
    let color: Color
    let brightness: Double
    let shadowRadius: Double
    
    var body: some View {
        Circle()
            .foregroundColor(color)
            .brightness(brightness)
            .overlay(Circle()
                        .stroke(Color.white, lineWidth: 4))
            .shadow(color: color, radius: shadowRadius)
            .padding()
    }
}

struct ColorCircle_Previews: PreviewProvider {
    static var previews: some View {
        LightCircle(color: .green, brightness: -0.5, shadowRadius: 0)
    }
}
