//
//  TableViewController.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/21/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import Foundation
import UIKit



class TableView: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return RolodexUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let firstNameLastName = "\(RolodexUsers[indexPath.row].firstName) \(RolodexUsers[indexPath.row].lastName)"
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
    cell.textLabel?.text = firstNameLastName
    cell.detailTextLabel?.text = RolodexUsers[indexPath.row].company
        return cell
    }
    
    override func viewDidLoad() {
       
        tableView.delegate = self
        tableView.dataSource = self
        tableView.reloadData()
    }
    

    
}
