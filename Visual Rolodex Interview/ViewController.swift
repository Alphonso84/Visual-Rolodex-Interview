//
//  ViewController.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/20/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController {
    
    
    
    @IBOutlet weak var myCollectionView: UICollectionView!
    
    private let reuseIdentifier = "cell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //Number of Sections in CollectionView
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
    }
    
    //Number of items in CollectionView set to number of items in Array
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return array.count
    }
    //Telling prototype cell what to display
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = UIImage(named: array[indexPath.row] + ".jpg")
        
        return cell
    }
    


}

