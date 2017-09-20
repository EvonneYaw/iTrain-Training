//
//  FirstScreenViewController.swift
//  To Do Core Data
//
//  Created by LTEIBCE51055E on 14/09/2017.
//  Copyright © 2017 LTEIBCE51055E. All rights reserved.
//

import UIKit

class FirstScreenViewController: UIViewController {

    
    
    @IBOutlet weak var PlaceLbl: UILabel!
    @IBOutlet weak var NameLbl: UILabel!
    @IBOutlet weak var DescLbl: UILabel!
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldPlace: UITextField!
    @IBOutlet weak var textFieldDesc: UITextField!
    
    
    
    @IBOutlet weak var SaveButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func ButtonPressed(_ sender: Any) {
        
        
        
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDelegate.persistentContainer.viewContext
        let newToDoItem = ToDoItem(context: context)
        
        // If appropriate, configure the new managed object.
        newToDoItem.itemName = textFieldName.text
        newToDoItem.itemPlace = textFieldPlace.text
        newToDoItem.itemDesc = textFieldDesc.text
        newToDoItem.itemCompleted = false
        
        
        // Save the context.
        do {
            try context.save()
            
            //Prompt to previous page
            self.navigationController?.popViewController(animated: true)
        } catch {
            // Replace this implementation with code to handle the error appropriately.
            // fatalError() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
            let nserror = error as NSError
            fatalError("Unresolved error \(nserror), \(nserror.userInfo)")
        }
        
        
        
        let alertCtrl = UIAlertController(title: "Alert", message: "Your data have been safe successfully", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertCtrl.addAction(okAction)
        present(alertCtrl, animated: true, completion: nil)
        
        
        
    }



}
