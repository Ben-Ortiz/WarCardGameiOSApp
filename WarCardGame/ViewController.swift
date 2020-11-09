//
//  ViewController.swift
//  WarCardGame
//
//  Created by Ben Ortiz on 3/14/20.
//  Copyright © 2020 Ben Ortiz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var leftImageView: UIImageView!//class is UIImageView
    
    @IBOutlet weak var rightImageView: UIImageView!
    
    @IBOutlet weak var leftScoreLabel: UILabel!
    
    @IBOutlet weak var rightScoreLabel: UILabel!
    
    var leftScore = 0
    var rightScore = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
     
    @IBAction func dealTapped(_ sender: Any) {
        
        //Randomize some numbers
        
        let leftNumber = Int.random(in: 2...14)
        let rightNumber = Int.random(in: 2...14)

        //update the image views
        leftImageView.image = UIImage(named: "card\(leftNumber)")
        rightImageView.image = UIImage(named: "card\(rightNumber)")
        
        //compare the random numbers
        if leftNumber > rightNumber {
            //Left Side Wins
            leftScore += 1
            leftScoreLabel.text = String(leftScore) //pass in intger and it turns into a string
            
        } else if leftNumber < rightNumber {
            //Right Side Wins
            rightScore += 1
            rightScoreLabel.text = String(rightScore)
        } else {
            //Tie
        }
        
    }
    
    
    
    

}

