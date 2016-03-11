//
//  ViewController.swift
//  Guessing Game
//
//  Created by Conrado Mateu Gisbert on 1/3/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resButton: UILabel!
    @IBOutlet weak var numberField: UITextField!
    @IBAction func submitButton(sender: AnyObject) {
        
        let randomNumber = Int(arc4random_uniform(6))
        let yourNumber = Int(numberField.text!) // let when the var isn't going to change
        if randomNumber == yourNumber{resButton.text = "You are right"
        }else{resButton.text = "Wrong! the number was \(randomNumber)"}
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

