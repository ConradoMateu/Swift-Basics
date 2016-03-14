//
//  ViewController.swift
//  Time table
//
//  Created by Conrado Mateu Gisbert on 14/03/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var slicerValue: UISlider!
    
    @IBOutlet weak var tableToReload: UITableView!
    @IBAction func slider(sender: AnyObject) {
        tableToReload.reloadData()
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20 //number of cells
    }
    
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timeTables = Int(slicerValue.value * 20)
        cell.textLabel?.text = String(timeTables * ( indexPath.row + 1))
        
        return cell //the number inside each cell
        
    }
    


}

