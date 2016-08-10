//
//  ViewController.swift
//  cat years
//
//  Created by Abdul Wahab on 8/10/16.
//  Copyright © 2016 Nas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var ageTextField: UITextField!
    
    @IBOutlet var ageLabel: UILabel!
    
    @IBAction func submitButton(_ sender: AnyObject) {
        let ageInCatYears = Int(ageTextField.text!)! * 7
        
        ageLabel.text = String(ageInCatYears)
        
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

