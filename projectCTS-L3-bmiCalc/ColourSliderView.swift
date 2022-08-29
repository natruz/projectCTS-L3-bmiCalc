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
    
    func forTrailingZero(n: Double) -> String {
        let tempVar = String(format: "%g", n)
            return tempVar
    }
         
    var body: some View {
        ZStack {
            Color(red: sliderR / 255,
                  green: sliderG / 255,
                  blue: sliderB / 255)
            .ignoresSafeArea()
            VStack {
                HStack {
                    Button {
                        sliderR -= 1
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    Text("\(Int(sliderR + 0.5))")
                    Button {
                        sliderR += 1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .font(.largeTitle)
                Slider(value: $sliderR, in: 0...255)
                    .padding(30)
                HStack {
                    Button {
                        sliderG -= 1
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    Text("\(Int(sliderG + 0.5))")
                    Button {
                        sliderG += 1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .font(.largeTitle)
                Slider(value: $sliderG, in: 0...255)
                    .padding(30)
                HStack {
                    Button {
                        sliderB -= 1
                    } label: {
                        Image(systemName: "minus.circle.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                    Text("\(Int(sliderB + 0.5))")
                    Button {
                        sliderB += 1
                    } label: {
                        Image(systemName: "plus.circle.fill")
                            .foregroundColor(.white)
                            .font(.title)
                    }
                }
                .font(.largeTitle)
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
