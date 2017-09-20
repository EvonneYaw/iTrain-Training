//
//  ViewController.swift
//  myCamera
//
//  Created by LTEIBCE51055E on 14/09/2017.
//  Copyright © 2017 LTEIBCE51055E. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate{

    
    @IBOutlet weak var myImageView: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    @IBAction func cameraPressed(_ sender: Any) {
        
        if UIImagePickerController.isSourceTypeAvailable(.camera){
            
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = false
            imagePicker.delegate = self
            imagePicker.sourceType = .camera
        
            self.present(imagePicker, animated: true, completion: nil)
            
        }
        
        else{
            let alertController = UIAlertController(title: "Camera ", message: "Camera not supported", preferredStyle: .alert)
        
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
        }
        
    }

    
    @IBAction func picRollPressed(_ sender: Any) {
    
        if UIImagePickerController.isSourceTypeAvailable(.photoLibrary){
            
            let imagePicker = UIImagePickerController()
            imagePicker.allowsEditing = false
            imagePicker.delegate = self
            imagePicker.sourceType = .photoLibrary
            
            self.present(imagePicker, animated: true, completion: nil)
            
        }
            
        else{
            let alertController = UIAlertController(title: "Photo Library", message: "Photo Library is not supported", preferredStyle: .alert)
            
            let okAction = UIAlertAction(title: "OK", style: .default, handler: nil)
            
            alertController.addAction(okAction)
            present(alertController, animated: true, completion: nil)
        }
    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        myImageView.image = info [UIImagePickerControllerOriginalImage] as? UIImage
        myImageView.contentMode = UIViewContentMode.scaleAspectFill
        myImageView.clipsToBounds = true
        dismiss(animated: true, completion: nil)
        
    }
    
    
    
}

