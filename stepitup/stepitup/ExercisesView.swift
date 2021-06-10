//
//  ExercisesView.swift
//  stepitup
//
//  Created by Tia Pham on 5/5/21.
//

import SwiftUI

struct ExercisesView: View {
    @State var progressValue: Float = 1
    @State var total: Float = 3
    @State var extraWord: String = " Exercises"
    var body: some View {
        
        VStack {
            Text("Exercises").font(.largeTitle)
                .fontWeight(.bold/*@END_MENU_TOKEN@*/).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.059, green: 0.506, blue: 0.636))
            
            ProgressBar(value: $progressValue, total: $total, extraWord: $extraWord).frame(width: 500, height: 20)
                .padding()
            
            ExerciseButton(image: "selfstretching", exerciseCategory: "Self Stretching!")
                .padding()
            ExerciseButton(image: "assistedstretching", exerciseCategory: "Assisted Stretching!")
            ExerciseButton(image: "getstrong", exerciseCategory: "Get Strong!")
            ExerciseButton(image: "getmoving", exerciseCategory: "Get Moving!")
        }.padding()
    }
}

struct ExercisesView_Previews: PreviewProvider {
    static var previews: some View {
        ExercisesView()
    }
}
