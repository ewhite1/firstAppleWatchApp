//
//  InterfaceController.swift
//  TestApp 1 WatchKit Extension
//
//  Created by Edward White on 9/24/15.
//  Copyright © 2015 Positivecapitalism. All rights reserved.
//

import WatchKit
import Foundation
// stupid silly app that will change the title text when
// you press the button in the app. It randomizes
// from an array, to create

class InterfaceController: WKInterfaceController {
    
    let states = ["Rock", "Hard House", "Trap", "Electro", "Techno", "Happy Hardcore", "Hip Hop", "HardStyle", "House Music", "Drum and Bass", "Sleep"]
   
    // testing the changing of a label
    @IBOutlet var lblLabel: WKInterfaceLabel!
    
    @IBOutlet var actionButton: WKInterfaceButton!
    @IBAction func pressedButton() {
        changeText()
        //print ("\(states[numGen])")
    }
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    func changeText() {
        let numGen = Int(arc4random_uniform(10))
        //actionButton.setTitle("\(states[numGen])")
        lblLabel.setText("\(states[numGen])")
    }
    
}
