//
//  ViewController.swift
//  Hello World
//
//  Created by Cyberjaya 11 iTrain on 11/09/2017.
//  Copyright © 2017 Sean Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func ButtonPress(_ sender: Any) {
        let alert = UIAlertController(title: "Hello, World", message: "This is my first app!", preferredStyle: .alert)
        
        let okaction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        let cancelaction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        alert.addAction(okaction)
        alert.addAction(cancelaction)
        present(alert, animated: true, completion: nil)
        
    }
    
    
    
    
   
    
    
    
}

