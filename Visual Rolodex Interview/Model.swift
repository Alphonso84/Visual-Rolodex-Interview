//
//  Model.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/20/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//
import UIKit

struct PersonCard: Codable {
    let lastName: String
    let firstName: String
    let email: String
    let company: String
    let startDate: String
    let bio: String
    let avatar: String

    
//    init (lastName: String, firstName: String, email: String, company: String, startDate: String, bio: String, avatar: String) {
//        self.lastName = lastName
//        self.firstName = firstName
//        self.email = email
//        self.company = company
//        self.startDate = startDate
//        self.bio = bio
//        self.avatar = avatar
//
//    }
}
