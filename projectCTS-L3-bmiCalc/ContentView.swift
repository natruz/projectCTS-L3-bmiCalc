//
//  ContentView.swift
//  projectCTS-L3-bmiCalc
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 27/8/22.
//

import SwiftUI

struct ContentView: View {
    
    @State var height: String = ""
    @State var weight: String = ""

    let textBoxColour = Color(red: 143/255, green: 161/255, blue: 139/255)
    let textColour = Color(red: 100/255, green: 100/255, blue: 100/255)
    
    @State var bmi: String = ""
    @State var healthRisk = ""
    let healthrisks = [
        "Possible nutritional deficiency and osteoporosis.",
        "Low risk (healthy range).",
        "Moderate risk of developing heart disease, high blood pressure, stroke, diabetes mellitus.",
        "High risk of developing heart disease, high blood pressure, stroke, diabetes mellitus. Metabolic Syndrome.",
    ]
    
    var body: some View {
        ZStack {
            Image("ICT-L3-photo1")
                .resizable()
                .ignoresSafeArea()
            VStack {
                Spacer()
                TextField("Height", text: $height)
                    .keyboardType(.decimalPad)
                    .foregroundColor(textColour)
                    .padding()
                    .background(textBoxColour)
                    .cornerRadius(15)
                TextField("Weight", text: $weight)
                    .keyboardType(.decimalPad)
                    .foregroundColor(textColour)
                    .padding()
                    .background(textBoxColour)
                    .cornerRadius(15)
                Button {
                    let bmiDoub = round((Double(weight) ?? 0) / pow((Double(height) ?? 0), 2) * 10) / 10
                    bmi = String(bmiDoub)
                    if bmiDoub < 18.5 {
                        healthRisk = healthrisks[0]
                    } else if bmiDoub < 23 {
                        healthRisk = healthrisks[1]
                    } else if bmiDoub < 27.5 {
                        healthRisk = healthrisks[2]
                    } else {
                        healthRisk = healthrisks[3]
                    }
                } label: {
                    Text("Calculate!")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding()
                        .background(textBoxColour)
                        .cornerRadius(15)
                }
                HStack {
                    Text("BMI: \(bmi)")
                        .foregroundColor(textColour)
                    Spacer()
                }
                .padding()
                .background(textBoxColour)
                .cornerRadius(15)
                VStack(alignment: .leading) {
                    HStack {
                        Text("Health Risk: ")
                            .foregroundColor(textColour)
                        Spacer()
                    }
                    Text("")
                    Text("\(healthRisk)")
                        .foregroundColor(textColour)
                }
                .padding()
                .background(textBoxColour)
                .cornerRadius(15)
                Spacer()
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(height: "1.5", weight: "50")
    }
}
