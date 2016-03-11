//
//  ViewController.swift
//  IsPrime
//
//  Created by Conrado Mateu Gisbert on 3/3/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resLabel: UILabel!
    @IBOutlet weak var textField: UITextField!
    @IBAction func check(sender: AnyObject) {
        if let res = Int(textField.text!){//avoid crashes
            if isPrime(res){
                resLabel.text = "The Number \(res) is prime"
            }else{
                resLabel.text = "The Number \(res) is Not prime"
            }
        }else{resLabel.text = "Enter a number!"}
    }
    
    
    func isPrime(n : Int) -> Bool {
        if n<=1{
            return true
        }else if n<=3{
            return true
        }
        var i = 2
        while i*i <= n{
            if n%i == 0{
                return false
            }
            i = i + 1
        }
        
        return true
        
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

