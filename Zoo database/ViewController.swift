//
//  ViewController.swift
//  Zoo database
//
//  Created by Qualan Woodard on 7/13/15.
//  Copyright © 2015 Qualan Woodard. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var placesTableView: UITableView!
    var places : [Place] = []
    var animalsArray : [Animal] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        places.append(Place(name:"Marine Animals",animals:[
            
            Animal(
                name: "whale (Blue)",lifeExpectancy: "Average 80-90 years",scientificName: "Balaenoptera musculus",weight: "Can be over 180,000kg",habitat: "Oceans. Often spend summers feeding in polar waters and undertake long migrations towards the Equator as winter arrives.",diet: "Carnivore: krill",range: "All the world's oceans.",image: UIImage(named: "blue whale")!),
            Animal(name: "Dolphin", lifeExpectancy: "Around 12-20 years", scientificName: "Delphinadae (oceanic species) and Platanistoidea (river species)", weight: "40 kg to over 6 tonnes", habitat: "Oceans or river", diet: "Carnivore", range: "Global, typically found in shallow seawater of the continental shelves", image: UIImage(named: "dolphin")!),
            Animal(name: "Seal (Harp)", lifeExpectancy: "Around 20 years", scientificName: "Pagophilus groenlandicus", weight: " Around 180 kg", habitat: "Oceans, floating ice and coastal regions", diet: "Carnivore", range: "Atlantic and Arctic Oceans, and surrounding land/ice", image: UIImage(named: "seal")!),
            Animal(name: "Shark", lifeExpectancy: "20 – 30 years", scientificName: "Selachimorpha", weight: "680–1,100 kg", habitat: " some species inhabit shallow, coastal regions, others live in deep waters, on the ocean floor and in the open ocean. Some species, like the bull shark, are even known to swim in salt, fresh and brackish waters.", diet: "Carnivore", range: "Global, typically found in shallow seawater of the continental shelves", image: UIImage(named: "shark")!),
            Animal(name: "Octopus", lifeExpectancy: "1 to 2 years", scientificName: "Octopoda", weight: " Up to 270kg", habitat: "Octopuses divide into two types, the deep-sea finned octopuses and their finless, shallower water cousins. They inhabit many diverse regions of the ocean, especially coral reefs", diet: "Carnivore", range: "Tropical and temperate waters of the world’s oceans", image: UIImage(named: "octopus")!)]))
        
        places.append(Place(name:"Flying Animals",animals:[
            
            Animal(name: "Butterfly", lifeExpectancy: "from 1 week to a year depending on species", scientificName: "Lepidoptera", weight: "0.3g up to 3g depending on species", habitat: "wetlands, meadows, wood’s edge, rainforests and urban gardens", diet: "Herbivore", range: "Butterflies are found worldwide except on the continent of Antarctica", image: UIImage(named: "Butterfly")!),
            
            Animal(name: "Eagle", lifeExpectancy: "Up to about 35 years", scientificName: "Accipitridae", weight: "up to the 6.7 kg", habitat: "Varied, though usually near trees and water", diet: "Carnivores: Reptiles, small mammals, fish, small birds and sometimes carrion are all part of the eagle's diet", range: "All over the world except New Zealand and Antarctica", image: UIImage(named: "eagle")!),
            
            Animal(name: "Pigeon", lifeExpectancy: "3-5 years", scientificName: "Columba livia", weight: "250-550 g", habitat: " Coastal regions, however feral pigeons have adapted well to humanised urban areas", diet: "Omnivore", range: "Global, except Antarctica, the high Arctic and the Sahara Desert", image: UIImage(named: "pigeon")!),
            
            Animal(name: "Vampire Bats", lifeExpectancy: "Around 9 years", scientificName: "Desmodus rotundus", weight: "57 g (Varies; can double in one feeding.)", habitat: "Arid to humid, tropical and subtropical areas", diet: "Carnivore", range: "Central to South America", image: UIImage(named: "bat")!),
            
            Animal(name: "Hummingbird", lifeExpectancy: "3 to 5 years", scientificName: "Trochilidae", weight: "2 to 6 g", habitat: "Woodland areas, orchards and also frequent gardens where flowering plants are plentiful", diet: "Omnivore: primarily nectar and insects", range: "Breeds in southern Canada and eastern USA, and winters in Central America and the West Indies", image: UIImage(named: "hummingbird,png")!)
            ]))
        
        places.append(Place(name:"Land Animals",animals:[
            
            Animal(name: "Elephant", lifeExpectancy: " African elephants - up to 70 years; Asian elephants – up to 60 years", scientificName: "Elephantidae", weight: "African – 2250 to 6350 kg; Asian – 2000 to 4990 kg", habitat: "Open grassland, marshes, savannas and forests", diet: "Herbivore", range: "African elephants range throughout sub-Saharan Africa and the rain forest of central and West Africa. Asian elephants live in fragmented areas throughout the Indian subcontinent and Southeast Asia", image: UIImage(named: "elephant")!),
            
            Animal(name: "Gorilla", lifeExpectancy: "30-50 years", scientificName: "Gorilla gorilla", weight: "Males are 140-200 kg, while females are around 100 kg", habitat: "Tropical rainforest, wet lowland forest, swamps and abandoned fields", diet: "Herbivore", range: "Central Africa", image: UIImage(named: "Gorilla")!),
            
            Animal(name: "Alligator", lifeExpectancy: "35-50 years", scientificName: "Alligator", weight: "380 (female) – 440 (male) kg for American alligator (Chinese species is lighter)", habitat: "Freshwater lakes, marshes, and swamps", diet: "Carnivore", range: "North America and East Asia", image: UIImage(named: "alligator")!),
            
            Animal(name: "Bear (Polar)", lifeExpectancy: " 25 to 30 years", scientificName: "Ursus maritimus", weight: "350 to 720 kg. Females are generally about half the weight of males", habitat: "Ice sheets and coastal waters", diet: "Carnivore", range: "Arctic", image: UIImage(named: "bear")!),
            
            Animal(name: "Tiger", lifeExpectancy: "10-15 years", scientificName: "Panthera tigris", weight: "109 to 227 kg", habitat: "from the Siberian taiga to open grasslands and tropical mangrove swamps.", diet: "Carnivore", range: "Bengal Tiger is most numerous in the Sundarbans region of India and Bangladesh. It is also found in northern and central India and in Myanmar (formerly Burma) and Nepal.", image: UIImage(named: "tiger")!)
            ]))
        
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return places.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let placeCell = tableView.dequeueReusableCellWithIdentifier("PlaceCell", forIndexPath: indexPath)
        placeCell.textLabel!.text = places[indexPath.row].name
        return placeCell
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! AnimalsViewController
        let index = placesTableView.indexPathForSelectedRow?.row
        dvc.animalsArray = places[index!].animals
        
    }
    
}

