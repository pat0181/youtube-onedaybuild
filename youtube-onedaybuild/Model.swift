//
//  Model.swift
//  youtube-onedaybuild
//
//  Created by Peter on 2020-05-30.
//  Copyright © 2020 Peter. All rights reserved.
//

import Foundation

class Model {

    func getVideos() {
        
        // Create URL object
        let url = URL(string: Constants.API_URL)
        
        guard url != nil else {
            return
        }
        
        // Get a URL session object
        let session = URLSession.shared
        
        // Get a data task from URL session
        let dataTask = session.dataTask(with: url!) { (data, response, error) in
            // check if therewere any errors
            if error != nil || data == nil {
                return
            }
            
            // Parsing the data into video objects
            
        }
        
        // Kick off the task
        dataTask.resume()
        
    }
    
}
