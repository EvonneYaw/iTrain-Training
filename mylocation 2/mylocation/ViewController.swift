//
//  ViewController.swift
//  mylocation
//
//  Created by LTEIBCE51055E on 15/09/2017.
//  Copyright © 2017 LTEIBCE51055E. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {

    @IBOutlet weak var myLatitude: UILabel!
    
    @IBOutlet weak var myLongityde: UILabel!
    
    var locationManager : CLLocationManager!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestAlwaysAuthorization()
        
        locationManager.delegate = self
        
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        
        let location = locations.first!
        self.myLatitude.text = "\(location.coordinate.latitude)"
        self.myLongityde.text = "\(location.coordinate.longitude)"
        
    }
    
    
    @IBAction func locationPressed(_ sender: Any) {
        
        locationManager.startUpdatingLocation()
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

    
    
    
    
}

