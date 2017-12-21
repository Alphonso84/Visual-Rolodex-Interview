//
//  API.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/20/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//
import UIKit
import Foundation


var RolodexUsers = [[String:Any]]()
class API {
    
   
    func parseJSON() {
        let baseURL = "https://s3-us-west-2.amazonaws.com/udacity-mobile-interview/CardData.json"
         let dataForURL = URL(string: baseURL)
        
        //URL SESSION
        let session = URLSession.shared
        let task = session.dataTask(with: (dataForURL)!) { (data, response, error) in
            print("Start")
            guard let unwrappedData = data else {return}
            do {
                
                let jsonData = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as? [[String:Any]]
                //JSONDATA IS AN ARRAY OF DICTIONARIES
                RolodexUsers = jsonData!
                
                
 //PRINTS JSON DATA TO CONSOLE
                print(RolodexUsers)
                //JSONDATA DICTIONARIES
                
                //print(RolodexDictionary["email"] as! String)
                
                
                
                
            } catch {
                print(error)
            }
        }
        task.resume()
        
    }
    
    


}
