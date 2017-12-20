//
//  API.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/20/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//
import UIKit
import Foundation
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
               let RolodexUsers = jsonData!
                print(RolodexUsers)
                
            } catch {
                print(error)
            }
        }
        task.resume()
        
    }
    
    


}
