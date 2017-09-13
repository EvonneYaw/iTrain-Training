//
//  ViewController.swift
//  JSON
//
//  Created by Cyberjaya 11 iTrain on 13/09/2017.
//  Copyright © 2017 Sean Lee. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var myPicture: UIImageView!
    @IBOutlet weak var getNewUser: UIButton!
    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var addrLbl: UILabel!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var phoneLbl: UILabel!
    @IBOutlet weak var DOBLbl: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    
    //New method to "default" prompt out screen for the first time user
    
    
    override func viewDidAppear(_ animated: Bool) {
        
        
        let defaults = UserDefaults.standard
        let visited = defaults.bool(forKey: "visited")
        
        if !visited {
        
            let alertCtrl = UIAlertController(title: "Welcome to My App", message: "Wish you enjoy my App", preferredStyle: .alert)
        
                alertCtrl.addTextField(configurationHandler: { (textField) in
                textField.placeholder = "Enter your name"
                    
            })
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: { (alert) in
                            let yourName = alertCtrl.textFields![0].text
                            defaults.set(yourName, forKey: "name")
                            defaults.synchronize()
                
            })
        
            alertCtrl.addAction(okAction)
            present(alertCtrl, animated: true, completion: nil)
        
            defaults.set(true, forKey: "visited")
            defaults.synchronize()
            
        }
    
        else {
            if let name = defaults.string(forKey: "name") {
                print("Hello \(name)")
            }
            
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    let url = URL(string: "https://randomuser.me/api/?results=1")
    
    
    
    
    @IBAction func ButtonPress(_ sender: Any) {
        
        do {
            let data = try Data(contentsOf: url!)
            
            if let json: NSDictionary = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? NSDictionary {
                print(json)
                
                let resultArray = json["results"] as! [[String:Any]]
                for result in resultArray {
                    
                    let name = result["name"] as! [String:String]
                    if let firstName = name["first"] {
                        if let lastName = name["last"] {
                            if let title = name["title"] {
                            
                                self.nameLbl.text = "\(title) \(firstName) \(lastName)"
                        
                            }
                        }
                        
                    }
                    
                    let address = result["location"] as! [String:Any]
                    if let myStreet = address["street"] {
                        if let myPostcode = address["postcode"] {
                            if let myState = address["state"] {
                              if let myCity = address["city"] {
                                
                               self.addrLbl.text = "\(myStreet) \(myCity) \(myPostcode) \(myState)"
                                
                                }
                            }
                        }
                        
                    }
                    

                    if let myEmail = result["email"] {
                        self.emailLbl.text = myEmail as! String
                    }
                    
                    
                    if let myPhone = result["phone"] {
                        self.phoneLbl.text = myPhone as! String
                    }
                    
                    
                    if let myDOB = result["dob"] {
                        self.DOBLbl.text = myDOB as! String
                    }
                    
                    
                    let myPic = result["picture"] as! [String:String]
                        if let largePic = myPic["large"] {
                            let urlPic = URL(string: largePic)
                            
                            do {
                                let dataPic = try Data(contentsOf: urlPic!)
                                self.myPicture.image = UIImage(data: dataPic)
                                }
                            catch {
                            
                            }
                        }
                    
                
                
                    
                    
                    
                    let dateFormatter = DateFormatter()
                    dateFormatter.dateStyle = DateFormatter.Style.short
                    dateFormatter.locale = Locale(identifier: "en_GB")
                    
                   // let formattedDate = dateFormatter.string(from: DOBLbl.date)
                    
                    }
                }
            }
            
            
        catch { print(error)}
        
        
    }
    
}

    
    
    



