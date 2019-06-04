//
//  Profile.swift
//  IOS-Project
//
//  Created by etudiant on 03/06/2019.
//  Copyright © 2019 MOI. All rights reserved.
//

import UIKit

class Profile: UIViewController {
    
    @IBOutlet weak var profilePic: UIImageView!
    var editable = false;
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var localizationField: UITextField!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic.layer.borderWidth = 1
        profilePic.layer.masksToBounds = false
        profilePic.layer.borderColor = UIColor.black.cgColor
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.clipsToBounds = true
        
    }
    
    @IBAction func onClick(_ sender: Any) {
        editable = !editable
        editButton.title = editable ? "Done" : "Edit"
        
        if(editable){
            nameField.isUserInteractionEnabled = true
            descriptionField.isUserInteractionEnabled = true
            localizationField.isUserInteractionEnabled = true
        }
        else{
            nameField.isUserInteractionEnabled = false
            descriptionField.isUserInteractionEnabled = false
            localizationField.isUserInteractionEnabled = false
        }
    }
}
