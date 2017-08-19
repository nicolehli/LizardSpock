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
    var numberOfTimesUserWon = 0
    var numberOfTimesiPhoneWon = 0
 

    @IBOutlet weak var resultsLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        resultsLabel.text = "pick a sign \n to start game"
    }
    
    
    @IBOutlet weak var gamesPlayedCounter: UILabel!
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // Step 1: player selects a sign
    @IBAction func playScissors(_ sender: Any) {
        let iPhoneSign = generateRandomSign()
        
        let resultsText = determineOutcome(mySign: "✂️", iPhoneSign: iPhoneSign)
        
        resultsLabel.text = resultsText
    
    }
    
    
    @IBAction func playPaper(_ sender: Any) {
        let iPhoneSign = generateRandomSign()
        
        let resultsText = determineOutcome(mySign: "🗞", iPhoneSign: iPhoneSign)
        
        resultsLabel.text = resultsText
    }
    
    @IBAction func playRock(_ sender: Any) {
        
        let iPhoneSign = generateRandomSign()
        
        let resultsText = determineOutcome(mySign: "💎", iPhoneSign: iPhoneSign)
        
        resultsLabel.text = resultsText
        }

    @IBAction func playLizard(_ sender: Any) {
        let iPhoneSign = generateRandomSign()
        
        let resultsText = determineOutcome(mySign: "🦎", iPhoneSign: iPhoneSign)
    
        resultsLabel.text = resultsText
    }
    
    @IBAction func playSpock(_ sender: Any) {
        let iPhoneSign = generateRandomSign()
        
        let resultsText = determineOutcome(mySign: "🖖🏼", iPhoneSign: iPhoneSign)
        
        resultsLabel.text = resultsText
    }
    
    

    // Step 2: game randomly selects a sign
    func generateRandomSign() -> String {
        let someRandomNumber = arc4random_uniform(5);
        var iPhoneSign = ""
        
        // 0 - paper
        // 1 - rock
        // 2 - scissors
        // 3 - lizard
        // 4 - spock
        if someRandomNumber == 0 {
            iPhoneSign = "🗞"
        } else if someRandomNumber == 1 {
            iPhoneSign = "💎"
        } else  if someRandomNumber == 2 {
            iPhoneSign = "✂️"
        } else  if someRandomNumber == 3 {
            iPhoneSign = "🦎"
        } else  if someRandomNumber == 4 {
            iPhoneSign = "🖖🏼"
        }
        
        return iPhoneSign
    
    }


    func determineOutcome(mySign: String, iPhoneSign: String) -> String {
        // Step 3: decide who wins
        // given player always play rock:
        // 1. Scissors cuts Paper
        // 2. Paper covers Rock
        // 3. Rock crushes Lizard
        // 4. Lizard poisons Spock
        // 5. Spock smashes Scissors
        // 6. Scissors decapitates Lizard
        // 7. Lizard eats Paper
        // 8. Paper disproves Spock
        // 9. Spock vaporizes Rock
        // 10. (and as it always has) Rock crushes Scissors
        
        var outcome = ""
        
        if (mySign == "✂️" && iPhoneSign == "🗞") ||
            (mySign == "🗞" && iPhoneSign == "💎") ||
            (mySign == "💎" && iPhoneSign == "🦎") ||
            (mySign == "🦎" && iPhoneSign == "🖖🏼") ||
            (mySign == "🖖🏼" && iPhoneSign == "✂️") ||
            (mySign == "✂️" && iPhoneSign == "🦎") ||
            (mySign == "🦎" && iPhoneSign == "🗞") ||
            (mySign == "🗞" && iPhoneSign == "🖖🏼") ||
            (mySign == "🖖🏼" && iPhoneSign == "💎") ||
            (mySign == "💎" && iPhoneSign == "✂️")

            {
            outcome = mySign + "             " + iPhoneSign + "\nyou win"
        } else if iPhoneSign == mySign {
            outcome = mySign + "             " + iPhoneSign + "\nwe tied"
        } else {
            outcome = mySign + "             " + iPhoneSign + "\nyou lose"
        }
        
      
        
         gamesPlayed = gamesPlayed + 1
         gamesPlayedCounter.text = "GAMES PLAYED: " + String(gamesPlayed)
        
         return outcome
    }
}
