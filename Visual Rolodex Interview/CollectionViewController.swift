//
//  CollectionViewController.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/20/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import Foundation
import UIKit

class CollectionView: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return RolodexUsers.count
    }
    
    //Cell Config
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        //imageURL is the path to each RolodexUser picture
        let imageURL = "\(RolodexUsers[indexPath.row].avatar)"
        //Concatenated string for First and Last Name
        let firstNameLastName = "\(RolodexUsers[indexPath.row].firstName) \(RolodexUsers[indexPath.row].lastName)"
        
        let cell: MyCell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! MyCell
        cell.cellTextField.text = RolodexUsers[indexPath.row].bio
        cell.cellLabel.text = firstNameLastName
        //cell.imageCell.image =
       print(imageURL)
        return cell
    }
    
   
    
    override func viewDidLoad() {
      
    }
    
//    //Number of Sections in CollectionView
//    func numberOfSections(in MyCollectionView: UICollectionView) -> Int {
//        
//        return 1
//    }
//    
//    //Number of items in CollectionView set to number of items in Array
//    func collectionView(_ MyCollectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
//        
//        return RolodexUsers.count
//    }
//    //Telling prototype cell what to display
//    func collectionView(_ MyCollectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        let cell = MyCollectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: )
//        return cell
//    }
//    
}
