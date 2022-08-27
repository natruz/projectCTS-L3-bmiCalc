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
    
    var body: some View {
        ZStack {
            Image("ICT-L3-photo1")
                .resizable()
                .ignoresSafeArea()
            VStack {
                TextField("Height", text: $height)
                    .foregroundColor(textColour)
                    .padding()
                    .background(textBoxColour)
                    .cornerRadius(15)
                TextField("Weight", text: $weight)
                    .foregroundColor(textColour)
                    .padding()
                    .background(textBoxColour)
                    .cornerRadius(15)
                Text("BMI: ")
                    .foregroundColor(textColour)
                    .padding()
                    .background(textBoxColour)
                    .cornerRadius(15)
                Text("Health Risk: ")
                    .foregroundColor(textColour)
                    .padding()
                    .background(textBoxColour)
                    .cornerRadius(15)
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
