//
//  ContentView.swift
//  TrafficLight
//
//  Created by Михаил Мезенцев on 12.02.2022.
//

import SwiftUI

enum Light {
    case red, yellow, green, noLight
}

struct ContentView: View {
    @State private var buttonTitle = "Start"
    @State private var currentLight = Light.noLight
    
    var body: some View {
        ZStack {
            Color.black
                .ignoresSafeArea()
            
            VStack() {
                LightCircle(
                    color: .red,
                    brightness: currentLight == .red ? 0 : -0.5,
                    shadowRadius: currentLight == .red ? 20 : 0
                )
                
                LightCircle(
                    color: .yellow,
                    brightness: currentLight == .yellow ? 0 : -0.5,
                    shadowRadius: currentLight == .yellow ? 20 : 0
                )
                
                LightCircle(
                    color: .green,
                    brightness: currentLight == .green ? 0 : -0.5,
                    shadowRadius: currentLight == .green ? 20 : 0
                )
                
                Spacer(minLength: 100)
                
                CustomButton(title: buttonTitle) {
                    if buttonTitle == "Start" {
                        buttonTitle = "Next"
                    }
                    changeColor()
                }
                .frame(width: 200)
            }
        }
    }
    
    private func changeColor() {
        switch currentLight {
        case .red:
            currentLight = .yellow
        case .yellow:
            currentLight = .green
        case .green:
            currentLight = .red
        case .noLight:
            currentLight = .red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
