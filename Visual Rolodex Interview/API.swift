//
//  API.swift
//  Visual Rolodex Interview
//
//  Created by user on 12/20/17.
//  Copyright © 2017 Alphonso. All rights reserved.
//

import Foundation
class API: ViewController {
    
   
    
    
    
    func buildUrl(constructedUrl: String) -> URL{
        let baseURL = ""
        //URL FILTER LIMITS RESULTS RETURNED
        let numberOfResults = "&$limit=20"
        //URL FILTER ORDERS BY MOST RECENT
        let sortOrder = "&$order=datetime DESC"
        //URL FILTER ORDERS RESULTS BY CITY(GLOBAL VARIABLE)
        let userCity = "&city=\(city)"
        // print(MainViewController.CityString().city)
        
        urlString = "\(baseURL)\(token)\(userCity)\(sortOrder)\(numberOfResults)"
        
        let FormattedUrlString = urlString.replacingOccurrences(of: " ", with: "%20")
        let url = URL(string: FormattedUrlString)
        return url!
        
    }
    

    
    
    func parseJSON() {
        let unwrappedURL = buildUrl(constructedUrl: urlString)
        //URL SESSION
        let session = URLSession.shared
        let task = session.dataTask(with: (unwrappedURL)) { (data, response, error) in
            print("Start")
            guard let unwrappedData = data else {return}
            do {
                
                let jsonData = try JSONSerialization.jsonObject(with: unwrappedData, options: []) as? [[String:Any]]
                //JSONDATA IS AN ARRAY OF DICTIONARIES
                RolodexUsers = jsonData!
                
                // ACESSING THE ARRAY AND CREATING DICTIONARY INSTANCES (The first dictionary is the most recent by default)
                
                
                //CREATING STRING INSTANCES OF DICTIONARY VALUES
                
                
                
            } catch {
                print(error)
            }
        }
        task.resume()
        
    }

}
