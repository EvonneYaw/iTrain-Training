//
//  ThirdViewCellViewController.swift
//  MultiTab Application
//
//  Created by Cyberjaya 11 iTrain on 12/09/2017.
//  Copyright © 2017 Sean Lee. All rights reserved.
//

import UIKit

class ThirdViewCellViewController: UIViewController {

    @IBOutlet weak var mydatePicker: UIDatePicker!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    

  
    
    @IBAction func GetMyDate(_ sender: Any) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = DateFormatter.Style.short
        dateFormatter.timeStyle = DateFormatter.Style.short
        
        dateFormatter.locale = Locale(identifier: "en_GB")
        
        let formattedDate = dateFormatter.string(from: mydatePicker.date)
        
        let alertCtrl = UIAlertController(title: "Hello World", message: "Welcome to my app. You have selected \(formattedDate)", preferredStyle: .alert)
        
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertCtrl.addAction(okAction)
        present(alertCtrl, animated: true, completion: nil)
        
       
    }
    
}
