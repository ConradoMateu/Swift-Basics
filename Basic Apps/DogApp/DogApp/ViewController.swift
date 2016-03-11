
//  ViewController.swift
p
//
//  Created by Conrado Mateu Gisbert on 24/2/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var yearsTextField: UITextField!
    
    @IBOutlet var resLabel: UILabel!
    
    @IBAction func ageButton(sender: AnyObject) {
        var dogAge = Int(yearsTextField.text!)!
        //This comand only work is the text field isn't empty so we put an ! && variable that has the text 
        //field is goin to be an integer(unwrapping)
        dogAge = dogAge * 7
        resLabel.text = "Your dog is \(dogAge) in dog years"
        
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

