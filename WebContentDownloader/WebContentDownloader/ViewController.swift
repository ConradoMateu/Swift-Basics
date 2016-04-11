//
//  ViewController.swift
//  WebContentDownloader
//
//  Created by Conrado Mateu Gisbert on 28/03/16.
//  Copyright © 2016 conradomateu. All rights reserved.
//
import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        let url = NSURL(string: "http://conradomateu.github.io")!
        
        
        
        
        //Display Content
        
        //webView.loadRequest(NSURLRequest(URL: url))
        
        
        //Download Content
        
        let task = NSURLSession.sharedSession().dataTaskWithURL(url) { (data, response, error) -> Void in
            
            // Will happen when task completes
            
            if let urlContent = data { // if task exist
                
                let webContent = NSString(data: urlContent, encoding: NSUTF8StringEncoding)
                
                //Long time for a queue tu flush, force the queue to end (faster)
                
                dispatch_async(dispatch_get_main_queue(), { () -> Void in
                    
                    self.webView.loadHTMLString(String(webContent!), baseURL: nil)
                    
                    //I used self cause is in the closer to refer smth that is outside it
                    
                })
                
                
            } else {
                
                print("enter a valid URL")
                
            }
            
         
            
        }
        
        task.resume()
 
        
    
    }
 
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //dont forget to add the property to the info.plist to read http URLs
}

