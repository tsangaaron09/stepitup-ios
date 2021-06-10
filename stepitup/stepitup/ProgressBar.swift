//
//  progressBar.swift
//  stepitup
//
//  Created by Tia Pham on 5/5/21.
//

import SwiftUI

struct ProgressBar: View {
    @Binding var value: Float
    @Binding var total: Float
    @Binding var extraWord: String
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                ZStack {
                    Text(String(Int(value)) + "/" + String(Int(total)) + extraWord).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.059, green: 0.506, blue: 0.636)/*@END_MENU_TOKEN@*/).alignmentGuide(.leading, computeValue: { d in d[.trailing]
                    })
                    Rectangle().frame(width: geometry.size.width, height: geometry.size.height)
                        .opacity(0.3)
                        .foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.769, green: 0.769, blue: 0.769)/*@END_MENU_TOKEN@*/)
                }
                
                Rectangle().frame(width: min(CGFloat(self.value/self.total)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                    .foregroundColor(Color(red: 0.09, green: 0.651, blue: 0.858))
                    .animation(.linear)
                    .cornerRadius(45)
            }.cornerRadius(45.0)
        }
    }
}
