//
//  ViewController.swift
//  SeeFood
//
//  Created by 久田直治郎 on 2018/10/27.
//  Copyright © 2018年 Naojirou Hisada. All rights reserved.
//

import UIKit
import CoreML
import Vision

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var imageView: UIImageView!
    let imagePciker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePciker.delegate = self
        imagePciker.sourceType = .photoLibrary
        imagePciker.allowsEditing = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        if let userPickedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            imageView.image = userPickedImage
        }
        imagePciker.dismiss(animated: true, completion: nil)
    }

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        present(imagePciker, animated: true, completion: nil)
    }
    
}

