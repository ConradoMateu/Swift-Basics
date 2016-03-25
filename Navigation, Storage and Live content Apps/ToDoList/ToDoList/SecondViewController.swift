//
//  SecondViewController.swift
//  ToDoList
//
//  Created by Conrado Mateu Gisbert on 24/03/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties
    
    @IBOutlet weak var textFieldItem: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.textFieldItem.delegate = self
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions


    @IBAction func addItem(sender: AnyObject) {
        myArray.append(textFieldItem.text!)
        textFieldItem.text = ""
        NSUserDefaults.standardUserDefaults().setObject(myArray, forKey: "myArray")
    }
    
    // MARK: UITextFieldDelegate
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        
        self.view.endEditing(true)
        
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        
        textFieldItem.resignFirstResponder()
        
        return true
    }


}

