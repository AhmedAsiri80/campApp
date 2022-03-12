//
//  ViewController.swift
//  camapp
//
//  Created by Ahmed Assiri on 09/08/1443 AH.
//



import UIKit

class ViewController: UIViewController , UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    @IBOutlet weak var change: UIButton!
    @IBOutlet weak var welcome: UILabel!
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        welcome.text = NSLocalizedString("hello", comment: "")
        change.setTitle(NSLocalizedString("changeLanguage", comment: ""), for: .normal)

        
    }

    @IBAction func butChange(_ sender: Any) {
        

        let picker = UIImagePickerController()
        picker.sourceType = .camera
        picker.allowsEditing = true
        picker.delegate = self
        present(picker, animated: true, completion: nil)
        

    }
    
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
        
    }
}

