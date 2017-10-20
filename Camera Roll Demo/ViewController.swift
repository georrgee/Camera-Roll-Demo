//
//  ViewController.swift
//  Camera Roll Demo
//
//  Created by George Garcia on 7/18/17.
//  Copyright © 2017 George. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        
        if let image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            
            imageView.image = image
            
        } else{
            
            print("Getting photo interupted by an error!!")
            
        }
        
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBOutlet var imageView: UIImageView!
    
    @IBAction func importButton(_ sender: AnyObject) {
        
        let imagePickerController = UIImagePickerController() // allows user to pick an image
        
        imagePickerController.delegate = self
        
        imagePickerController.sourceType = UIImagePickerControllerSourceType.photoLibrary
        
        imagePickerController.allowsEditing = false // if we want the image to go directy to app
        
        self.present(imagePickerController, animated: true, completion: nil)
        
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

