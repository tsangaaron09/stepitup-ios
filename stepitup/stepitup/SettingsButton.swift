//
//  SettingsButton.swift
//  stepitup
//
//  Created by Tia Pham on 4/13/21.
//

import SwiftUI

struct SettingsButton: View {
    var buttonLabel: String
    var pageName: String
    var body: some View {
        NavigationLink(destination: Text(pageName),label: {Text(buttonLabel)
            .font(.title)
            .fontWeight(.medium)})
            .padding()
            .frame(width: 290.0)
            .foregroundColor(.white)
            .background(Color(red: 0.383, green: 0.286, blue: 0.488))
            .cornerRadius(/*@START_MENU_TOKEN@*/10.0/*@END_MENU_TOKEN@*/)
    }
}

struct SettingsButton_Previews: PreviewProvider {
    static var previews: some View {
        SettingsButton(buttonLabel: "Settings Button", pageName: "Page")
    }
}
