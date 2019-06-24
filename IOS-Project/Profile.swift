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
    var editable: Bool!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var descriptionField: UITextView!
    @IBOutlet weak var localizationField: UITextField!
    @IBOutlet weak var playedGamesField: UITextView!
    @IBOutlet weak var editButton: UIBarButtonItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        editable = false
        profilePic.layer.borderWidth = 1
        profilePic.layer.masksToBounds = false
        profilePic.layer.borderColor = UIColor.black.cgColor
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.clipsToBounds = true
        isEditable()
        
    }
    
    @IBAction func onClick(_ sender: Any) {
        editable = !editable
        editButton.title = editable ? "Done" : "Edit"
        isEditable()
        
    }
    
    func isEditable(){
        nameField.isUserInteractionEnabled = editable
        descriptionField.isUserInteractionEnabled = editable
        localizationField.isUserInteractionEnabled = editable
        playedGamesField.isUserInteractionEnabled = editable
    }
}
