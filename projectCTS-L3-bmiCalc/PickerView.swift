//
//  PickerView.swift
//  projectCTS-L3-bmiCalc
//
//  Created by NATALIE CHEN HUI REGINA RUZSICSK stu on 29/8/22.
//

import SwiftUI

struct PickerView: View {
    
    @State var selectedPokemon = "Bulbasaur"
    
    var body: some View {
        VStack {
            Picker("Please select a pokemon", selection: $selectedPokemon) {
                ForEach(pokemon, id: \.self) {
                    Text($0)
                        .font(.system(size: 40))
                }
            }
            Text("You selected: \(selectedPokemon)")
        }
    }

    struct PickerView_Previews: PreviewProvider {
        static var previews: some View {
            PickerView()
        }
    }
}
