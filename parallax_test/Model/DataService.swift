//
//  DataService.swift
//  parallax_test
//
//  Created by Nicolas Terrone on 28/01/2019.
//  Copyright © 2019 Nicolas Terrone. All rights reserved.
//

import Foundation

class DataService{
    static var instance = DataService()
    
    private var items = [
        Item(description: "CAMERA", imageTitle: "1"),
        Item(description: "CITY", imageTitle: "2"),
        Item(description: "ANIMALS", imageTitle: "3"),
        Item(description: "FLOWERS", imageTitle: "4"),
        Item(description: "STANDS", imageTitle: "5"),
        Item(description: "URBAN", imageTitle: "6")
    ]
    
    public func getItems() -> [Item] {
        return items
    }
}
