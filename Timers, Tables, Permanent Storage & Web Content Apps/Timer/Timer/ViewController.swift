//
//  ViewController.swift
//  Timer
//
//  Created by Conrado Mateu Gisbert on 11/03/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var seconds = 0
    var timer = NSTimer()
    @IBOutlet weak var resLabel: UILabel!
    
    
    @IBAction func play(sender: AnyObject) {
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("increaseTimer"), userInfo: nil, repeats: true)
    }
    
    @IBAction func pause(sender: AnyObject) {
        timer.invalidate()
    }
    @IBAction func stop(sender: AnyObject) {
        timer.invalidate()
        seconds = 0
        resLabel.text = "0"
    }
    
    
    func increaseTimer(){
        seconds++
        resLabel.text = "\(seconds)"
    
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

