//
//  TrafficLightColor.swift
//  kukhalashvili.la_HW3.1
//
//  Created by Admin on 12.12.2020.
//

import SwiftUI

struct TrafficLightColor: View {
    
    let color: UIColor
    let opacity: Double
    
    var body: some View {
        Color(color)
            .frame(width: 100, height: 100)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.white, lineWidth: 2))
            .opacity(opacity)
    }
}

struct TrafficLightColor_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightColor(color: .red, opacity: 1)
    }
}
