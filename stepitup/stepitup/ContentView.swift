//
//  ContentView.swift
//  stepitup
//
//  Created by Nikola Bojanic on 4/6/21.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        NavigationView {
            List(DataModel.data, id: \.self) { object in
                NavigationLink(object.title, destination: DetailView(data: object))
            }
            .navigationTitle("Pages")
            ColorPickerView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
