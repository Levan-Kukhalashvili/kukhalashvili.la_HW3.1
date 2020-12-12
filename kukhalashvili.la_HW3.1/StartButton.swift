//
//  StartButton.swift
//  kukhalashvili.la_HW3.1
//
//  Created by Admin on 12.12.2020.
//

import SwiftUI

struct StartButton: View {
    let action: () -> Void
    let bottonTitle: String
    
    var body: some View {
        Button(action: action) {
            Text(bottonTitle)
                .font(.title)
                .foregroundColor(.orange)
                .padding(.all)
                .background(
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(Color.gray, lineWidth: 2)
                )
        }
        
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton(action: { }, bottonTitle: "Start")
            
    }
}
