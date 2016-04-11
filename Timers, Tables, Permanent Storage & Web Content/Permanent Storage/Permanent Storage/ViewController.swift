//
//  ViewController.swift
//  Permanent Storage
//
//  Created by Conrado Mateu Gisbert on 15/03/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        NSUserDefaults.standardUserDefaults().setObject("conradomateu.github.io", forKey: "page")
        
        let userName = NSUserDefaults.standardUserDefaults().objectForKey("page")! as! String
        
        print(userName)
        
        let arr = ["Conrado", "Mateu", "Gisbert", "conradomateu.github.io"]
        
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")
        
        let returnedArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        for x in returnedArray {
            
            print(x)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

