//
//  ViewController.swift
//  SSLiders
//
//  Created by Cyberjaya 11 iTrain on 11/09/2017.
//  Copyright © 2017 Sean Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var mySwitch: UISwitch!
    @IBOutlet weak var mySliderValue: UILabel!
    @IBOutlet weak var mySlider: UISlider!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    @IBAction func OnOff(_ sender: Any) {
        if mySwitch.isOn {
            self.mySlider.isHidden = false
            self.mySliderValue.isHidden = false
        }
        
        else{
            self.mySlider.isHidden = true
            self.mySliderValue.isHidden = true
            
        }
    }
   
    
    
    @IBAction func sliderChanges(_ sender: Any) {
        self.mySliderValue.text = String(format: "%.1f", mySlider.value)
    }
        
    
    

}

