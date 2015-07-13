//
//  Animal.swift
//  Zoo database
//
//  Created by Qualan Woodard on 7/13/15.
//  Copyright © 2015 Qualan Woodard. All rights reserved.
//

import Foundation
import UIKit

class Animal: NSObject {
    var name = ""
    var lifeExpectancy = ""
    var scientificName = ""
    var weight = ""
    var habitat = ""
    var diet = ""
    var range = ""
    var image = UIImage()
    convenience init(name: String,lifeExpectancy: String, scientificName: String, weight: String, habitat: String, diet: String, range: String, image: UIImage) {
        self.init()
        self.name = name
        self.lifeExpectancy = lifeExpectancy
        self.scientificName = scientificName
        self.weight = weight
        self.habitat = habitat
        self.diet = diet
        self.range = range
        self.image = image
    }
    convenience init(name: String) {
    self.init()
    self.name = name
    }
    
    

}
