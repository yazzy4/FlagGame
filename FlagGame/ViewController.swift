//
//  ViewController.swift
//  FlagGame
//
//  Created by Yaz Burrell on 7/16/20.
//  Copyright © 2020 Yaz Burrell. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var countries = [String]()
    var score = 0
    var correctAnswer = 0
    var questionsAsked = 0
   
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "germany", "france", "ireland", "italy", "monoco", "nigeria", "poland", "russia", "spain", "uk", "us" ]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor
        
        askQuestion()
    }
    
    func askQuestion(action: UIAlertAction! = nil){
        countries.shuffle()
        correctAnswer = Int.random(in: 0...2)
        
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
        
        title = "\(countries[correctAnswer].uppercased()) & current score: \(score)"
    }
    
    func startNewGame(action: UIAlertAction! = nil) {
        score = 0
        questionsAsked = 0
        askQuestion()
    }
    
  
    
    
    @IBAction func buttonTapped(_ sender: UIButton) {
        var title: String?
        
        if sender.tag == correctAnswer {
            title = "Correct"
            score += 1
        } else {
            title = "Incorrect! The correct answer is \(countries[sender.tag].uppercased())"
            score -= 1
        }
        

//        let ac = UIAlertController(title: title, message: "Your score is \(score)", preferredStyle: .alert)
//
//        ac.addAction(UIAlertAction(title: "Continue", style: .default, handler: askQuestion))
//
//        present(ac, animated: true)
        
        if score < 10 {
        let ac = UIAlertController(title: title, message: "Your current score is \(score)", preferredStyle: .alert)
            
            ac.addAction(UIAlertAction(title: "Countinue", style: .default, handler: askQuestion))
            present(ac, animated: true)
            
        } else {
            let lastAc = UIAlertController(title: "Game Over", message: "Your score is \(score)", preferredStyle: .alert)
            
            lastAc.addAction(UIAlertAction(title: "End Game", style: .default, handler: startNewGame))
            present(lastAc, animated: true)
            
        }
    }
    
}
            
//        } else if score == 10  {
//            let ac = UIAlertController(title: title, message: "Your score is \(score)! You won!", preferredStyle: .alert)
//
//            ac.addAction(UIAlertAction(title: "Game complete", style: .cancel, handler: askQuestion))
//
            
        
    
    
 
    



