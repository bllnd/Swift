//
//  ViewController.swift
//  Whats My Number
//
//  Created by Abdul Wahab on 8/23/16.
//  Copyright © 2016 Nas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numberField: UITextField!
    
    
    @IBAction func save(_ sender: AnyObject) {
        
        
        UserDefaults.standard.set(numberField.text, forKey: "number")
        
        
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let numberObject = UserDefaults.standard.object(forKey: "number")
    
        if let number = numberObject as? String {
        
            numberField.text = number
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

