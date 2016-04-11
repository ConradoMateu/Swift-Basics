//
//  ViewController.swift
//  Table Views
//
//  Created by Conrado Mateu Gisbert on 15/03/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {
    
    var arr = ["Conrado", "Mateu", "Gisbert", "conradomateu.github.io"]

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return arr.count
    }
    
   
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = arr[indexPath.row]
        
        return cell
    
    }
    //remember create a link between table view and the view controler (Delegate and DataSource)


}

