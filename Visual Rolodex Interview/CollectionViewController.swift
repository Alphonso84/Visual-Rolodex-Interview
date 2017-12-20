//
//  CollectionViewController.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/20/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import Foundation
import UIKit

class CollectionView: UIViewController {
    
    override func viewDidLoad() {
        API().parseJSON()
    }
    
}
