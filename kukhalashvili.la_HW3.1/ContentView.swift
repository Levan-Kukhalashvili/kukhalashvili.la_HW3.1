//
//  ContentView.swift
//  kukhalashvili.la_HW3.1
//
//  Created by Admin on 11.12.2020.
//

import SwiftUI

enum CurrentLight {
    case red, yellow, green
}

struct ContentView: View {
        
    
    private let lightIsOff = 0.3
    private let lightIsOn = 1.0
    
    @State private var redOpacity = 0.3
    @State private var yellowOpacity = 0.3
    @State private var greenOpacity = 0.3
    
    @State private var bottonName = "Start"
    
    @State private var currentLight = CurrentLight.red
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea(.all)
            VStack {
                TrafficLightColor(color: .red, opacity: redOpacity)
                TrafficLightColor(color: .yellow, opacity: yellowOpacity)
                TrafficLightColor(color: .green, opacity: greenOpacity)
                Spacer()
                StartButton(action: {
                    bottonName = "Next"
                    
                    switch currentLight {
                    
                    case .red:
                        currentLight = .yellow
                        redOpacity = lightIsOn
                        greenOpacity = lightIsOff

                    case .yellow:
                        currentLight = .green
                        redOpacity = lightIsOff
                        yellowOpacity = lightIsOn

                    case .green:
                        currentLight = .red
                        greenOpacity = lightIsOn
                        yellowOpacity = lightIsOff

                    }
                }, bottonTitle: bottonName)
            }
            .padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
