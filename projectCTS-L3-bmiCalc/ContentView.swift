//
//  ContentView.swift
//  projectCTS-L3-bmiCalc
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 27/8/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Image("ICT-L3-photo1")
                VStack {
                    NavigationLink(destination: bmiCalcView()) {
                        Text("BMI Calculator")
                            .foregroundColor(.white)
                            .font(.largeTitle)
                            .padding()
                            .background(textBoxColour)
                            .cornerRadius(15)
                    }
                    .padding(10)
                    NavigationLink(destination: ColourSliderView()) {
                        Text("Colour Slider")
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
