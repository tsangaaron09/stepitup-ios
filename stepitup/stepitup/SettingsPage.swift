//
//  SettingsPage.swift
//  stepitup
//
//  Created by Tia Pham on 4/28/21.
//

import SwiftUI

struct SettingsPage: View {
    var body: some View {
        NavigationView {
            VStack {
                SettingsButton(buttonLabel: "Account", pageName: "Account Page")
                SettingsButton(buttonLabel: "Privacy", pageName: "Privacy Page")
                SettingsButton(buttonLabel: "Notifications", pageName: "Notifications Page")
                SettingsButton(buttonLabel: "Display", pageName: "Display Page")
                SettingsButton(buttonLabel: "Accessibility", pageName: "Accessibility Page")
                    
                .navigationBarTitleDisplayMode(.inline)
                .toolbar(content: {
                    ToolbarItem(placement: .principal) {
                        Text("Settings").font(.largeTitle).fontWeight(.bold).foregroundColor(/*@START_MENU_TOKEN@*/Color(red: 0.059, green: 0.506, blue: 0.636)/*@END_MENU_TOKEN@*/)
                    }
                })
            }
        }
    }
}

struct SettingsPage_Previews: PreviewProvider {
    static var previews: some View {
        SettingsPage()
    }
}
