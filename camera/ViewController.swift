//
//  ViewController.swift
//  camera
//
//  Created by Apple on 6/24/19.
//  Copyright © 2019 Apple. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var newScreen = UIImagePickerController()
    
    @IBAction func takePhotoTapped(_ sender: UIButton) {
        newScreen.sourceType = .camera
            present(newScreen, animated: true, completion: nil)
    }
    
    @IBOutlet weak var photoTaken: UIImageView!
    
    //last step
    
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage { photoTaken.image = selectedImage
            
        }
        newScreen.dismiss(animated: true, completion: nil)
    }

}

