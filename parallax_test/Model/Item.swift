//
//  Item.swift
//  parallax_test
//
//  Created by Nicolas Terrone on 28/01/2019.
//  Copyright © 2019 Nicolas Terrone. All rights reserved.
//

import Foundation

class Item {
    private(set) var description: String
    private(set) var imageTitle: String
    
    init(description: String, imageTitle: String) {
        self.description = description
        self.imageTitle = imageTitle
    }
}
