//
//  FrontExerciseButton.swift
//  stepitup
//
//  Created by Tia Pham on 5/9/21.
//

import SwiftUI

struct FrontExerciseButton: View {
    var image: String;
    var exerciseCategory: String;
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 420.0, height: 125.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.723, green: 0.537, blue: 0.825)/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.723, green: 0.537, blue: 0.825)/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                
            HStack {
                Image(image).cornerRadius(10)
                Text(exerciseCategory)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
            }.padding().foregroundColor(.red)
        }
    }
}

struct FrontExerciseButton_Previews: PreviewProvider {
    static var previews: some View {
        FrontExerciseButton(image: "assistedstretching", exerciseCategory: "Assisted Stretching!")
    }
}
