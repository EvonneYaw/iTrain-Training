//
//  ViewController.swift
//  TableView
//
//  Created by Cyberjaya 11 iTrain on 13/09/2017.
//  Copyright © 2017 Sean Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    let exampleArray = ["Malaysia", "Singapore", "Sri Lanka"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    
    
    //Compulsory Method
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exampleArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        cell.textLabel?.text = exampleArray[indexPath.row]
        
        
        
        return cell
    }
    
    
    
    //Create seague
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier=="toDetail" {
            let selectedIndexPath = tableView.indexPathForSelectedRow!
            
            let destinationVC = segue.destination as! DetailViewController
            destinationVC.item = itemToSent
        }
        
        
    
        
        //Note:
        // as! means to define the DetailViewController is a subset of Main Story Board
        //force subset controller to main controleer
    
    
}

