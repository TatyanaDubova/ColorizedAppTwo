//
//  ContentView.swift
//  ColorizedAppTwo
//
//  Created by Татьяна Дубова on 15.12.2023.
//

import SwiftUI

struct ContentView: View {
    
    @State private var red = 171.0
    @State private var green = 83.0
    @State private var blue = 254.0
    
    var body: some View {
        ZStack {
            Color(red: 40 / 255, green: 93 / 255, blue: 166 / 255)
                .ignoresSafeArea()
            VStack {
                ColorView(red: red / 255, green: green / 255, blue: blue / 255)
                
                ColorSliderView(value: $red, text: .constant("\(lround(red))"), accentColor: .red)
                ColorSliderView(value: $green, text: .constant("\(lround(green))"), accentColor: .green)
                ColorSliderView(value: $blue, text: .constant("\(lround(blue))"), accentColor: .blue)
                
                Spacer()
            }
        }
        .keyboardType(.numberPad)
        .toolbar {
            ToolbarItemGroup(placement: .keyboard) {
                Spacer()
                Button("Done") {

                }
            }
        }
    }
}

#Preview {
    ContentView()
}
