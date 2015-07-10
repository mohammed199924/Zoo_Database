//
//  BackTableVC.swift
//  Zoo_Database
//
//  Created by Qualan Woodard on 7/10/15.
//  Copyright © 2015 Qualan Woodard. All rights reserved.
//

import Foundation
import UIKit


class BackTableVC: UITableViewController {
    
    //colors by hexadecimal
    func UIColorFromRGB(colorCode: String, alpha: Float = 1.0) -> UIColor {
        
        let scanner = NSScanner(string:colorCode)
        
        var color:UInt32 = 0;
        
        scanner.scanHexInt(&color)
        
        
        
        let mask = 0x000000FF
        
        let r = CGFloat(Float(Int(color >> 16) & mask)/255.0)
        
        let g = CGFloat(Float(Int(color >> 8) & mask)/255.0)
        
        let b = CGFloat(Float(Int(color) & mask)/255.0)
        
        
        
        return UIColor(red: r, green: g, blue: b, alpha: CGFloat(alpha))
    }
    
    //The side bar items
    var TableArray: [String] = []
    
    override func viewDidLoad() {
        TableArray = ["Underwater","Land","Sky"]
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        //slide out menu background color
        self.tableView.backgroundColor = UIColorFromRGB("444646")
        return TableArray.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(TableArray[indexPath.row], forIndexPath: indexPath) as UITableViewCell
        
        cell.textLabel?.text = TableArray[indexPath.row]
        
        //cell and slide out menu styles
        cell.backgroundColor = UIColorFromRGB("444646")
        cell.textLabel!.textColor = UIColor.whiteColor()
        cell.textLabel!.font = UIFont(name: "HelveticaNeue-Light", size:17)
        tableView.separatorStyle = .None
        
        return cell
        
    }
    
    
}

