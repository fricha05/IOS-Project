//
//  Event.swift
//  IOS-Project
//
//  Created by etudiant on 24/06/2019.
//  Copyright © 2019 MOI. All rights reserved.
//

struct Event: Decodable {
    var title: String
    var creator : String//User ?
    var date: String
    var location: String
    var description: String
}
