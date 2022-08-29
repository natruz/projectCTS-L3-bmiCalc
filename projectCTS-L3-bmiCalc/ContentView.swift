//
//  ContentView.swift
//  projectCTS-L3-bmiCalc
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 27/8/22.
//

import SwiftUI

struct ContentView: View {
    
    let frameWidth = 250.0
    let frameHeight = 50.0
    
    var body: some View {
        NavigationView {
            ZStack {
                Image("ICT-L3-photo1")
                VStack {
                    NavigationLink(destination: bmiCalcView()) {
                        Text("BMI Calculator")
                            .frame(width: frameWidth, height: frameHeight)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .padding()
                            .background(textBoxColour)
                            .cornerRadius(15)
                    }
                    .padding(10)
                    NavigationLink(destination: ColourSliderView()) {
                        Text("Colour Slider")
                            .frame(width: frameWidth, height: frameHeight)
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .padding()
                            .background(textBoxColour)
                            .cornerRadius(15)
                    }
                }
            }
            .navigationBarHidden(true)
        }
        .accentColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
