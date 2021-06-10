//
//  ContentView.swift
//  stepitup
//
//  Created by Nikola Bojanic on 4/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            ExercisesView()
                .tabItem {
                    Label("Exercises", systemImage:"heart.fill")
                }
            RandomView()
                .tabItem {
                    Label("Random", systemImage: "person.circle")
                }
            RandomView()
                .tabItem {
                    Label("Random", systemImage: "calendar")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
