//
//  ViewController.swift
//  To Do!
//
//  Created by Cyberjaya 11 iTrain on 12/09/2017.
//  Copyright © 2017 Sean Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var itemsArray : [ToDoItem] = []
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let item1 = ToDoItem(itemName: "Go to Intermark", itemDesc: "go to intermark stop by SFC", itemPlace: "Intermark", completed: false)
        
        let item2 = ToDoItem(itemName: "Go to do Exercise", itemDesc: "get items out to the UI", itemPlace: "iTrain", completed: true)
        
        let item3 = ToDoItem(itemName: "Have a quick break", itemDesc: "Quick Tea Break", itemPlace: "iTrain", completed: true)
        
        let item4 = ToDoItem(itemName: "Finish the Do It yourself Exercise", itemDesc: "Quick tea Break", itemPlace: "iTrain", completed: false)
        
        
        
        itemsArray.append(item1)
        itemsArray.append(item2)
        itemsArray.append(item3)
        itemsArray.append(item4)
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return itemsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        cell.textLabel?.text = itemsArray[indexPath.row].itemName
        cell.detailTextLabel?.text = itemsArray[indexPath.row].itemDesc
        
        if itemsArray[indexPath.row].completed == false {
             cell.imageView?.image = UIImage(named:"wrong.png")
        }
        else {
        cell.imageView?.image = UIImage(named:"tick.png")
        }
        
        //ShortCut
        //let currentItem = itemsArray[indexPath.row]
        //cell.textLabel?.text = currentItem.itemName
        //cell.detailTextLabel?.text = currentItem.itemDesc
        
        //if currentItem.completed == false{
        //cell.imageView?.image = UIImage(named:"tick.png")
        //else{
        //cell.imageView?.image = UIImage(named:"wrong.png")}
        
    
        return cell
        
    }

    //Added handler condition
    @IBAction func buttonPressed(_ sender: Any) {
        
        let alertCtrl = UIAlertController(title: "Next", message: "Add new item",
                                          preferredStyle: .alert)
        alertCtrl.addTextField{ (textField) in textField.placeholder = "Item Name"}
        alertCtrl.addTextField{ (textField) in textField.placeholder = "Item Desciption"}
        alertCtrl.addTextField{ (textField) in textField.placeholder = "Item Place"}
    
        let okAction = UIAlertAction(title: "OK", style: .default)
                                    { (alert) in print ("foo")
                                        
        let textfields = alertCtrl.textFields!
        //it will not be "nil" even if we put ! because we have already declared the textField
        let itemName = textfields[0].text!
        let itemDesc = textfields[1].text!
        let itemPlace = textfields[2].text!
        
        let newItem = ToDoItem(itemName: itemName, itemDesc: itemDesc, itemPlace: itemPlace, completed: false)
        self.itemsArray.append(newItem)
        self.tableView.reloadData()
                                        
        }
        
            alertCtrl.addAction(okAction)
            present(alertCtrl, animated: true, completion: nil)
    }
    
}

