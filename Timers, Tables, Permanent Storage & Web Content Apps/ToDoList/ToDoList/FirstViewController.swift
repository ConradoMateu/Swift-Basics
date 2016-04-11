//
//  FirstViewController.swift
//  ToDoList
//
//  Created by Conrado Mateu Gisbert on 24/03/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//

import UIKit

// MARK: Global Properties

var myArray = [String]()

class FirstViewController: UIViewController, UITableViewDelegate {

    // MARK: Properties
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if NSUserDefaults.standardUserDefaults().objectForKey("myArray") != nil {//check if the NSUserDefaults, set the array equal if exist
            
            myArray = NSUserDefaults.standardUserDefaults().objectForKey("myArray") as! [String]
        
        
        }
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: Actions
    
    override func viewDidAppear(animated: Bool) {
        tableView.reloadData()
    }
    
    // MARK: UITableViewDelegate
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return myArray.count
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        cell.textLabel?.text = myArray[indexPath.row]
        
        return cell
        
    } //remember create a link between table view and the view controler (Delegate and DataSource)

    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == UITableViewCellEditingStyle.Delete { // .Delete can be right
            // Delete the row from the data source
            myArray.removeAtIndex(indexPath.row) //live version of the array
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade) // or tableView.reloadData()
            NSUserDefaults.standardUserDefaults().setObject(myArray, forKey: "myArray") // permanent version of the array
        }
    }
    



}

