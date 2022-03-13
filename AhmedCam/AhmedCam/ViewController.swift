//
//  ViewController.swift
//  AhmedCam
//
//  Created by Ahmed Assiri on 11/08/1443 AH.
//

// انشا صلاحيات للكام من الانفرميشن
import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate , UINavigationControllerDelegate {

    
    @IBOutlet weak var imgPhoto: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }

    
    
    // اذا ضغط على الزر سوف يظهر اكشن شيت
    @IBAction func btnTakePhoto(_ sender: Any) {
        
        showPhotoAlert()
        
        
    }
    
    
   // سوف نعرف فنكشن
    
    func showPhotoAlert() {
        
        let alert = UIAlertController(title: "Take Photo From", message: nil, preferredStyle: .actionSheet)
        alert.addAction(UIAlertAction(title: "Camra ", style: .default, handler: {action
            in
            self.getPhoto(type: .camera)
        }))
        alert.addAction(UIAlertAction(title: "Photo Library ", style: .default, handler: {action
            in
            self.getPhoto(type: .photoLibrary)
        }))
        alert.addAction(UIAlertAction(title: "Cancel ", style: .cancel, handler:
         nil))
        present(alert, animated: true, completion: nil)
    }
    
    
    
    func getPhoto(type : UIImagePickerController.SourceType) {
        
      let picker = UIImagePickerController()
        picker.sourceType = type
        picker.allowsEditing = false
        picker.delegate = self
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        if let image = info[.originalImage]  as? UIImage{
            imgPhoto.image = image
            
        }
        else{
            print("image not found")
        }
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        dismiss(animated: true, completion: nil)
    }
}

