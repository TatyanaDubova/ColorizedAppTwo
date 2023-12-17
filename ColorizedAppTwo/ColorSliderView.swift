//
//  ColorSliderView.swift
//  ColorizedAppTwo
//
//  Created by Татьяна Дубова on 15.12.2023.
//

import SwiftUI

struct ColorSliderView: View {
    
    @Binding var value: Double
    @Binding var text: String
    
    var accentColor: Color
    
    var body: some View {
        HStack {
            Text("\(lround(value))").foregroundStyle(.white)
                .padding(EdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 0))
            
            Slider(value: $value, in: 0...255, step: 1)
                .accentColor(accentColor)
            
            TextField("0", text: $text)
                .frame(width: 50)
                .padding(EdgeInsets(top: 6, leading: 6, bottom: 6, trailing: 6))
                .background(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 4)
                        .stroke(Color.white, lineWidth: 2)
                )
                .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
        }
    }
}

#Preview {
    ZStack {
        Color.gray
        ColorSliderView(value: .constant(100), text: .constant("255"), accentColor: .red)
    }
}

