//
//  FourthViewController.swift
//  MultiTab Application
//
//  Created by Cyberjaya 11 iTrain on 12/09/2017.
//  Copyright © 2017 Sean Lee. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController, UIPickerViewDelegate,
    UIPickerViewDataSource {
    
    let heroesArray = ["Spiderman", "Captain America", "Hulk", "Black Widow", "Hawkeys"]
    
    
    let weaponsArray = ["sword", "pristol", "gun", "arrow and bow"]
    
    
        
    @IBOutlet weak var mydatePicker: UIDatePicker!
    
    
    @IBOutlet weak var normalPicker: UIPickerView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func getmyDate(_ sender: Any) {
        
        let dateFormatter = DateFormatter()
        
        dateFormatter.dateStyle = .short
        dateFormatter.timeStyle = .short
        
        dateFormatter.locale = Locale(identifier: "en_GB")
        
        let formatterDate = dateFormatter.string(from: mydatePicker.date)
        
        
        let alertCtrl = UIAlertController(title: "Welcome to My App", message: "Today's Date \(formatterDate)", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertCtrl.addAction(okAction)
        present(alertCtrl, animated: true, completion: nil)
        
    }
    
    
    @IBAction func showmeMessage(_ sender: Any) {
        
        let selectedRow1 = self.normalPicker.selectedRow(inComponent: 0)
        
        let selectedRow2 = self.normalPicker.selectedRow(inComponent: 1)
        
        let selectedHero = self.heroesArray[selectedRow1]
        
        let selectWeapon = self.weaponsArray[selectedRow2]
        
        let messageToShow = "Hero \(selectedHero) has chosen to fight with \(selectWeapon) "
        
         let alertCtrl = UIAlertController(title: "Welcome to My App", message: messageToShow, preferredStyle: .alert)
        
          let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertCtrl.addAction(okAction)
        present(alertCtrl, animated: true, completion: nil)
        
    }
    
    //Number of Columns
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return heroesArray.count
        }
        else {
            return weaponsArray.count

        }
        
    }
  
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        if component == 0 {
            return heroesArray[row]
            
        }
        else {
            return weaponsArray [row]
        }
    }
    

    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    
    
    
}
