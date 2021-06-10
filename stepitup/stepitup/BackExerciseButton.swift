//
//  BackExerciseButton.swift
//  stepitup
//
//  Created by Tia Pham on 5/9/21.
//

import SwiftUI

struct BackExerciseButton: View {
    @State var progressValue: Float = 0
    @State var total: Float = 2
    @State var extraWord: String = ""
    var exerciseCategory: String;
    
    var body: some View {
        ZStack (alignment: .leading) {
            Rectangle()
                .frame(width: 420.0, height: 125.0)
                .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.723, green: 0.537, blue: 0.825)/*@END_MENU_TOKEN@*/)
                .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.723, green: 0.537, blue: 0.825)/*@END_MENU_TOKEN@*/)
                .cornerRadius(10)
                
            VStack {
                
                Text(exerciseCategory)
                    .font(.largeTitle)
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .lineLimit(1)
                    .minimumScaleFactor(0.5)
                    .padding()
                HStack {
                    ProgressBar(value: $progressValue, total: $total, extraWord: $extraWord).frame(width: 200, height: 20, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    
                    Rectangle()
                        .frame(width: 83,
                               height: 40)
                        .cornerRadius(10)
                        .foregroundColor(Color(red: 0.769, green: 0.769, blue: 0.769))
                }.padding(.top, 0)
            }
        }
    }
}

struct BackExerciseButton_Previews: PreviewProvider {
    static var previews: some View {
        BackExerciseButton(exerciseCategory: "Get Strong!")
    }
}
