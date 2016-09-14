//
//  ViewController.swift
//  TicTacToe
//
//  Created by Abdul Wahab on 9/9/16.
//  Copyright © 2016 Nas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var winningLabel: UILabel!
    @IBOutlet var playAgainButton: UIButton!
    @IBAction func playAgain(_ sender: AnyObject) {
        
        activeGame = true
        
        activePlayer = 1
        
        gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0]
        
        
        for i in 1..<10 {
        
            
            if let button = view.viewWithTag(i) as? UIButton {
            
                button.setImage(nil, for: [])
            
            }
            
            winningLabel.isHidden = true
            playAgainButton.isHidden = true
            
            winningLabel.center = CGPoint(x: winningLabel.center.x - 500, y: winningLabel.center.y)
            playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
            
        }
        
        
    }
    // 1 is nought, 2 is crosses
    
    var activeGame = true
    
    var activePlayer = 1
    
    var gameState = [0, 0, 0, 0, 0, 0, 0, 0, 0] // 0 - empty , 1 - noughts, 2 - crosses
    
    let winningCombinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]

    @IBAction func buttonPressed(_ sender: AnyObject) {
        
        let activePosition = sender.tag - 1
        
        if gameState[activePosition] == 0  && activeGame {
        
            gameState[activePosition] = activePlayer
            
            if activePlayer == 1 {
                
                sender.setImage(UIImage(named: "nought.png"), for: [])
                activePlayer = 2
                
            } else {
                
                sender.setImage(UIImage(named: "cross.png"), for: [])
                activePlayer = 1
                
            }
        
            for combination in winningCombinations {
            
                if gameState[combination[0]] != 0 && gameState[combination[0]] == gameState[combination[1]] && gameState[combination[1]] == gameState[combination[2]] {
                
                
            //We Have a winner
                
                activeGame = false
                
                    winningLabel.isHidden = false
                    playAgainButton.isHidden = false
                    
                    if gameState[combination[0]] == 1 {
                    
                        winningLabel.text = " Noughts has won!"
                    
                    } else {
                    
                    
                        winningLabel.text = "Crosses has won!"
                        
                    }
                    
                    UIView.animate(withDuration: 1, animations: {
                    
                        self.winningLabel.center = CGPoint(x: self.winningLabel.center.x + 500, y: self.winningLabel.center.y)
                        self.playAgainButton.center = CGPoint(x: self.playAgainButton.center.x + 500, y: self.playAgainButton.center.y)
                    
                    })
                    
                
                }
                
            }
        
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a n ib.
        
        winningLabel.isHidden = true
        playAgainButton.isHidden = true
        
        winningLabel.center = CGPoint(x: winningLabel.center.x - 500, y: winningLabel.center.y)
        playAgainButton.center = CGPoint(x: playAgainButton.center.x - 500, y: playAgainButton.center.y)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

