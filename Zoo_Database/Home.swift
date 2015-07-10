//
//  Home.swift
//  Zoo_Database
//
//  Created by Qualan Woodard on 7/10/15.
//  Copyright © 2015 Qualan Woodard. All rights reserved.
//

import Foundation
import UIKit

class Home : UIViewController {
    //Colors
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
    
    
    
  
    var varView = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //Nav Bar Styles
        self.navigationItem.title = "EBZIE"
        
        
        //slide menu
        
        Open.target = self.revealViewController()
        Open.action = Selector("revealToggle:")
        
        self.view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        
        
        
    }
    
    
}