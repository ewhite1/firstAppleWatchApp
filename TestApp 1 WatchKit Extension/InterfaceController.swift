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
    // the musical genres in the array.
    let states = ["Rock", "Hard House", "Trap", "Electro", "Techno", "Happy Hardcore", "Hip Hop", "HardStyle", "House Music", "Drum and Bass", "Sleep"]
   
    //
    @IBOutlet var lblLabel: WKInterfaceLabel!
    
    @IBOutlet var actionButton: WKInterfaceButton!
    @IBAction func pressedButton() {
        changeText()
        //only for testing purposes. Uncomment if needed
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
//the main function that changes the text from items in the array.
//uses a random number generator(numGen) to do this
    func changeText() {
        let numGen = Int(arc4random_uniform(10))
        //actionButton.setTitle("\(states[numGen])")
        lblLabel.setText("\(states[numGen])")
    }
    
}
