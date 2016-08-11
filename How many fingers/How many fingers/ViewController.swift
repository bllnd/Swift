//
//  ViewController.swift
//  How many fingers
//
//  Created by Abdul Wahab on 8/10/16.
//  Copyright © 2016 Nas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var enteredNumber: UITextField!
    
    @IBOutlet var returnedAnswer: UILabel!
    
    @IBAction func randNumGen(_ sender: AnyObject) {
        
        let diceRoll = String(arc4random_uniform(6))
        
        if enteredNumber.text ==  diceRoll {
            
            returnedAnswer.text = "You're right!"
            
        } else {
        
            returnedAnswer.text = "\(diceRoll) Guess again"
            
        }
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

