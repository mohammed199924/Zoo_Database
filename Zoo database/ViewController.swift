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
            Animal(name: "Parrot")]))
        
        places.append(Place(name:"Land Animals",animals:[
            Animal(name: "Elephant")]))
        
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

