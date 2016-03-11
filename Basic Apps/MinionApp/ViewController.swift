//
//  ViewController.swift
//  Swift Basics 1
//
//  Created by Conrado Mateu Gisbert on 18/2/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textlabel: UITextField!
    @IBOutlet weak var minionsText: UILabel!
    @IBAction func minionButton(sender: AnyObject) {
        print("Button Tapped")
        minionsText.text = textlabel.text
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View loaded")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

