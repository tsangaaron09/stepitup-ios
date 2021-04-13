//
//  CompletionIndicator.swift
//  stepitup
//
//  Created by Nikola Bojanic on 4/12/21.
//

import SwiftUI

struct CompletionIndicator: View {
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Circle()
                    .fill(Color.blue)
                    .overlay(Circle().stroke(Color.green, lineWidth: 30))
                    .padding()
                Text("2/3 Tasks Completed")
                    .font(.title)
                    .foregroundColor(.white)
                    .frame(width: geometry.size.width / 2)
            }
        }
    }
}

struct CompletionIndicator_Previews: PreviewProvider {
    static var previews: some View {
        CompletionIndicator()
    }
}
