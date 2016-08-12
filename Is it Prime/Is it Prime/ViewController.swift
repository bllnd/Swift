//
//  ViewController.swift
//  Is It Prime
//
//  Created by Abdul Wahab on 8/12/16.
//  Copyright © 2016 Nas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var textNumber: UITextField!
    
    @IBOutlet var primeReply: UILabel!
    
    @IBAction func primeCheck(_ sender: AnyObject) {
       
        if let userEnteredString = textNumber.text {
        
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                    
                }
                
                var i = 2
                
                while i < number {
                    
                    if number % i == 0 {
                        
                        isPrime = false
                        
                    }
                    
                    i += 1
                    
                }
                
                if isPrime {
                
                    primeReply.text = "\(number) is prime!"
                    
                } else {
                
                    primeReply.text = "\(number) is not prime"
                
                }
            
                
                
            } else {
            
                primeReply.text = "Please enter a positive number"
                
            }
        
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

