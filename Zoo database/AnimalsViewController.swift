//
//  AnimalsViewController.swift
//  Zoo database
//
//  Created by Qualan Woodard on 7/13/15.
//  Copyright © 2015 Qualan Woodard. All rights reserved.
//

import UIKit
import Foundation

class AnimalsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var animalTableView: UITableView!
    var animalsArray : [Animal] = []
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animalsArray.count
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let animalCell = tableView.dequeueReusableCellWithIdentifier("AnimalCell", forIndexPath: indexPath)
        animalCell.textLabel!.text = animalsArray[indexPath.row].name
        return animalCell
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dvc = segue.destinationViewController as! AnimalDetailViewController
        let index = animalTableView.indexPathForSelectedRow?.row
        dvc.animal = animalsArray[index!]
    }
    
}
