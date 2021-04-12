//
//  DetailView.swift
//  stepitup
//
//  Created by Nikola Bojanic on 4/12/21.
//

import SwiftUI

struct DetailView: View {
    var data: TableData
    @State var popoverIsShowing = false
    var body: some View {
        VStack {
            Text(data.detail)
            Button("Show Popover") {
                popoverIsShowing = true
            }
            .padding()
            .sheet(isPresented: $popoverIsShowing, content: {
                Text(data.popover)
            })
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(data: DataModel.data[1])
    }
}
