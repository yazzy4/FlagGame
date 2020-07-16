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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries += ["estonia", "germany", "france", "ireland", "italy", "monoco", "nigeria", "poland", "russia", "spain", "uk", "us" ]
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        askQuestion()
    }
    
    func askQuestion(){
        button1.setImage(UIImage(named: countries[0]), for: .normal)
        button2.setImage(UIImage(named: countries[1]), for: .normal)
        button3.setImage(UIImage(named: countries[2]), for: .normal)
    }


}

