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
        GoalsPage()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
