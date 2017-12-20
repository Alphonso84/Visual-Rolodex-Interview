//
//  Model.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/20/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//
import UIKit

struct PersonCard {
    var lastName: String
    var firstName: String
    var email: String
    var company: String
    var startDate: String
    var bio: String
    var avatar: UIImage

    
    init (lastName: String, firstName: String, email: String, company: String, startDate: String, bio: String, avatar: UIImage) {
        self.lastName = lastName
        self.firstName = firstName
        self.email = email
        self.company = company
        self.startDate = startDate
        self.bio = bio
        self.avatar = avatar
        
    }
}
