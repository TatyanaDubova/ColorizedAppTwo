//
//  ColorView.swift
//  ColorizedAppTwo
//
//  Created by Татьяна Дубова on 15.12.2023.
//

import SwiftUI

struct ColorView: View {
    
    let red: Double
    let green: Double
    let blue: Double
    
    var body: some View {
        Color(red: red, green: green, blue: blue)
            .cornerRadius(20)
            .frame(height: 200)
            .overlay(
                RoundedRectangle(cornerRadius: 20, style: .continuous)
                    .stroke(Color.white, lineWidth: 4)
            )
            .padding()
    }
}

#Preview {
    ZStack {
        Color.gray
        ColorView(red: 171 / 255, green: 83 / 255, blue: 254 / 255)
    }
}
