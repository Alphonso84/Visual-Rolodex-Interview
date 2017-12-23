//
//  API.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/20/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//
import UIKit
import Foundation


var RolodexUsers = [PersonCard]()


class API: UIViewController {
    
    @IBAction func getDataButton(_ sender: Any) {
        parseJSON()
    }
    
  // URL SESSION JSON METHOD
    func parseJSON() {
        let baseURL = "https://s3-us-west-2.amazonaws.com/udacity-mobile-interview/CardData.json"
        let dataForURL = URL(string: baseURL)
        //URL SESSION
        let session = URLSession.shared
        let task = session.dataTask(with: (dataForURL)!) { (data, response, error) in
            print("Start")
            guard data != nil else {return}
            do {
                let jsonDecoder = JSONDecoder()
                //DECODABLE TRANSFORMS JSON DATA INTO AN ARRAY OF TYPE PERSONCARD
                let jsonData = try jsonDecoder.decode(Array<PersonCard>.self, from: data!)
                //ASSIGNING JSONDATA TO ARRAY OF PERSONCARD SWIFT INSTANCE
                RolodexUsers = jsonData
                //PRINTS JSON DATA TO CONSOLE
                 print(RolodexUsers[0].avatar)
               } catch {
                print(error)
            }
        }
        task.resume()
        
    }
    
    


}
