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
    @IBOutlet weak var MyCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        API().parseJSON()
    }
    
    //Number of Sections in CollectionView
    func numberOfSections(in MyCollectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    //Number of items in CollectionView set to number of items in Array
    func collectionView(_ MyCollectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return RolodexUsers.count
    }
    //Telling prototype cell what to display
    func collectionView(_ MyCollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = MyCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        
        
        return cell
    }
    
}
