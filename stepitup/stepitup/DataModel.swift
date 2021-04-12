//
//  DataModel.swift
//  stepitup
//
//  Created by Nikola Bojanic on 4/12/21.
//

import Foundation

struct TableData: Hashable {
    var id: Int
    var title: String
    var detail: String
    var popover: String
}

class DataModel: NSObject {
    static let data = [
        TableData(id: 1, title: "Home", detail: "Our home page", popover: "Hola"),
        TableData(id: 2, title: "About", detail: "Learn about us", popover: "Zdravo"),
        TableData(id: 3, title: "Contact", detail: "Get in touch", popover: "Ciao")
    ]
}
