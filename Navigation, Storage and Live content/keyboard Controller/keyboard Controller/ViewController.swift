//
//  ViewController.swift
//  keyboard Controller
//
//  Created by Conrado Mateu Gisbert on 23/03/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    /*
    
     By adopting the protocol, you gave the ViewController class the ability to identify itself as a UITextFieldDelegate. This means you can set it as the delegate of the text field and implement some of its behavior to handle the text field’s user input.
 
    */

    // MARK: Properties
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Handle the text field’s user input through delegate callbacks.
        nameField.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: Actions
    @IBAction func button(sender: AnyObject) {
        nameLabel.text = "Conrado Mateu"
    }
    
    
    // MARK: UITextFieldDelegate
    
    
    func textFieldShouldReturn(textField: UITextField) -> Bool{
        
        // Hide the keyboard.
        nameField.resignFirstResponder()
        return true
    
    } // called when 'return' key pressed. return NO to ignore.
    
    func textFieldShouldEndEditing(textField: UITextField) -> Bool{
        
        nameLabel.text = nameField.text
        return true
    
    } // return YES to allow editing to stop and to resign first responder status. NO to disallow the editing session to end

}

