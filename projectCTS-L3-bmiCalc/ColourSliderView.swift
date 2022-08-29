//
//  ColourSliderView.swift
//  projectCTS-L3-bmiCalc
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 29/8/22.
//

import SwiftUI

struct ColourSliderView: View {
    
    @State var sliderR = 50.0
    @State var sliderG = 50.0
    @State var sliderB = 50.0
    
    var body: some View {
        ZStack {
            Color(red: sliderR / 255,
                  green: sliderG / 255,
                  blue: sliderB / 255)
            .ignoresSafeArea()
            VStack {
                Slider(value: $sliderR, in: 0...255)
                    .padding(30)
                Slider(value: $sliderG, in: 0...255)
                    .padding(30)
                Slider(value: $sliderB, in: 0...255)
                    .padding(30)
            }
        }
    }
}

struct ColourSliderView_Previews: PreviewProvider {
    static var previews: some View {
        ColourSliderView()
    }
}
