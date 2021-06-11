//
//  ContentView.swift
//  stepitup
//
//  Created by Nikola Bojanic on 4/12/21.
//

import SwiftUI

struct ContentView: View {
    @State var completed = false;
    var body: some View {
        
        TabView {
            ExercisesView()
                .tabItem {
                    Label("Exercises", systemImage:"heart.fill")
                }
            GoalsPage()
                .tabItem {
                    Label("Goals", systemImage: "person.circle")
                }
            ExercisesView()
                .tabItem {
                    Label("Goals", systemImage: "calendar")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
