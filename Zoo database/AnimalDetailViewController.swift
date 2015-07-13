//
//  AnimalDetailViewController.swift
//  Zoo database
//
//  Created by Qualan Woodard on 7/13/15.
//  Copyright © 2015 Qualan Woodard. All rights reserved.
//

import UIKit
import Foundation

class AnimalDetailViewController: UIViewController {
    
    @IBOutlet weak var animalImage: UIImageView!
    @IBOutlet weak var animalname: UILabel!
    @IBOutlet weak var sciname: UILabel!
    @IBOutlet weak var animalHabitat: UILabel!
    @IBOutlet weak var animalWeight: UILabel!
    @IBOutlet weak var animalLIfeExpectancy: UILabel!
    @IBOutlet weak var animalDiet: UILabel!
    @IBOutlet weak var animalRange: UILabel!
    
    var animal: Animal!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        animalname.text = animal.name
        sciname.text = animal.scientificName
        animalHabitat.text = animal.habitat
        animalWeight.text = animal.weight
        animalLIfeExpectancy.text = animal.lifeExpectancy
        animalDiet.text = animal.diet
        animalRange.text = animal.range
        animalImage.image = animal.image
    }

}
