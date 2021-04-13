//
//  GoalsPage.swift
//  stepitup
//
//  Created by Nikola Bojanic on 4/12/21.
//

import SwiftUI

struct GoalsPage: View {
    @State var streak: Int = 3
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Text("Daily Goals")
                    .font(.largeTitle)
                CompletionIndicator()
                    .frame(height: geometry.size.height / 2)
                HStack {
                    Text("\(streak)")
                        .fontWeight(.bold)
                        .padding(.trailing, -8)
                        .foregroundColor(.green)
                    Text(" Day Streak!")
                }
                    .font(.title3)
                HStack {
                    Text("Calf Stretch")
                }
            }
            .padding()
        }
    }
}

struct GoalsPage_Previews: PreviewProvider {
    static var previews: some View {
        GoalsPage()
    }
}
