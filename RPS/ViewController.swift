//
//  ViewController.swift
//  RPS
//
//  Created by Nicole Li on 2017-08-17.
//  Copyright © 2017 Nicole Li. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var gamesPlayed = 0
 

    @IBOutlet weak var resultsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    @IBOutlet weak var gamesPlayedCounter: UILabel!
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func playScissors(_ sender: Any) {
        
        
        // Step 1: player selects a sign
        print("✌🏼 has been selected.")
        
        // Step 2: game randomly selects a sign
        let someRandomNumber = arc4random_uniform(3);
        var iPhoneSign = ""
        
        // 0 - paper
        // 1 - rock
        // 2 - scissors
        if someRandomNumber == 0 {
            iPhoneSign = "✋🏼"
        } else if someRandomNumber == 1 {
            iPhoneSign = "🤘🏼"
        } else  if someRandomNumber == 2 {
            iPhoneSign = "✌🏼"
            
        }
        print("iPhone selected:" + iPhoneSign)
        
        
        
        // Step 3: decide who wins
        // given player always play scissors
        // if iphoneSign is paper, iPhone wins
        // if iPhoneSign is rock, ties
        // if iPhoneSign is scissors, I win
        
        if iPhoneSign == "🤘🏼" {
            resultsLabel.textColor = UIColor.red
            print("iPhone wins!")
            resultsLabel.text = "iPhone picked: " + iPhoneSign + ". iPhone wins"
        } else if iPhoneSign == "✌🏼" {
            resultsLabel.textColor = UIColor.yellow
            print("It's a tie!")
            resultsLabel.text = "iPhone picked: " + iPhoneSign + ". It's a tie!"
        } else if iPhoneSign == "✋🏼" {
            resultsLabel.textColor = UIColor.green
            print("You win!")
            resultsLabel.text = "iPhone picked: " + iPhoneSign + ". You win!"
            
        }
        
        gamesPlayed = gamesPlayed + 1
        gamesPlayedCounter.text = "Games played: " + String(gamesPlayed)
      
    }
    
    
    @IBAction func playPaper(_ sender: Any) {
        
        // Step 1: player selects a sign
        print("✋🏼 has been selected.")
        
        // Step 2: game randomly selects a sign
        let someRandomNumber = arc4random_uniform(3);
        var iPhoneSign = ""
        
        // 0 - paper
        // 1 - rock
        // 2 - scissors
        if someRandomNumber == 0 {
            iPhoneSign = "✋🏼"
        } else if someRandomNumber == 1 {
            iPhoneSign = "🤘🏼"
        } else  if someRandomNumber == 2 {
            iPhoneSign = "✌🏼"
            
        }
        print("iPhone selected:" + iPhoneSign)
        
        
        
        // Step 3: decide who wins
        // given player always play rock:
        // if iphoneSign is paper, iPhone wins
        // if iPhoneSign is rock, ties
        // if iPhoneSign is scissors, I win
        
        if iPhoneSign == "✌🏼" {
            resultsLabel.textColor = UIColor.red
            print("iPhone wins!")
            resultsLabel.text = "iPhone picked: " + iPhoneSign + ". iPhone wins"
        } else if iPhoneSign == "✋🏼" {
            print("It's a tie!")
            resultsLabel.text = "iPhone picked: " + iPhoneSign + ". It's a tie!"
        } else if iPhoneSign == "🤘🏼" {
            print("You win!")
            resultsLabel.text = "iPhone picked: " + iPhoneSign + ". You win!"
        }
        
         gamesPlayed = gamesPlayed + 1
         gamesPlayedCounter.text = "Games played: " + String(gamesPlayed)
        
    }
    
    @IBAction func playRock(_ sender: Any) {
        // Step 1: player selects a sign
        print("🤘🏼 has been selected.")
        
        // Step 2: game randomly selects a sign
        let someRandomNumber = arc4random_uniform(3);
        var iPhoneSign = ""
        
        // 0 - paper
        // 1 - rock
        // 2 - scissors
        if someRandomNumber == 0 {
            iPhoneSign = "✋🏼"
        } else if someRandomNumber == 1 {
            iPhoneSign = "🤘🏼"
        } else  if someRandomNumber == 2 {
            iPhoneSign = "✌🏼"
            
        }
        print("iPhone selected:" + iPhoneSign)
        
    
    
    // Step 3: decide who wins
    // given player always play rock:
    // if iphoneSign is paper, iPhone wins
    // if iPhoneSign is rock, ties
    // if iPhoneSign is scissors, I win
    
    if iPhoneSign == "✋🏼" {
        resultsLabel.textColor = UIColor.red
        print("iPhone wins!")
        resultsLabel.text = "iPhone picked: " + iPhoneSign + ". iPhone wins"
    } else if iPhoneSign == "🤘🏼" {
        print("It's a tie!")
        resultsLabel.text = "iPhone picked: " + iPhoneSign + ". It's a tie!"
    } else if iPhoneSign == "✌🏼" {
        print("You win!")
        resultsLabel.text = "iPhone picked: " + iPhoneSign + ". You win!"
    }
         gamesPlayed = gamesPlayed + 1
         gamesPlayedCounter.text = "Games played: " + String(gamesPlayed)
        
    }
    
    
   
}

