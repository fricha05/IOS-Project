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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        profilePic.layer.borderWidth = 1
        profilePic.layer.masksToBounds = false
        profilePic.layer.borderColor = UIColor.black.cgColor
        profilePic.layer.cornerRadius = profilePic.frame.height/2
        profilePic.clipsToBounds = true
    }
}
