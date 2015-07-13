//
//  Place.swift
//  Zoo database
//
//  Created by Qualan Woodard on 7/13/15.
//  Copyright © 2015 Qualan Woodard. All rights reserved.
//

import Foundation
import UIKit

class Place: NSObject {
    var name = ""
    var animals: [Animal] = []
    
    convenience init(name: String, animals: [Animal]) {
        self.init()
        self.name = name
        self.animals = animals
    }
    convenience init(name: String) {
        self.init()
        self.name = name
    }
}
