//
//  ViewControllerEvents.swift
//  test3
//
//  Created by Jeffrey Seaman on 3/15/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import UIKit

class ViewControllerEvents: UITableViewController {

    var bodies: [String] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = .familyhouseBlue
        navBar?.tintColor = UIColor.white
        navBar?.isTranslucent = false
        navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        getAPIEvent() //Call API
    }
    
       /// Defines how many rows we want in the tableview
        override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
           return bodies.count - 20
        }
       
       /// Defines our cells in the tableview
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
           let cell = UITableViewCell()
           cell.textLabel?.text = bodies[indexPath.row]
           return cell
        }

    /// Code for a GET call
    func getAPIEvent() {
        
        // set the url
        let url = URL(string: "https://familyhouseadmin.org/api/v1/events")!
        
        // request to define all the options for our API call
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // setting timeout of API call to be 10 seconds
        request.timeoutInterval = 10
        
        // start the session to start the call and receive our response
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            
       
            
            // receive the data
            do {
                // turning the data into a json object
                if let data = data, let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] {
                    
                    // looping through each object in the json object
                    json.forEach({ element in
                                               
                        let EventLabel = "Event Date: "
                
                        if let body = element["event_date"] as? String {
                            self.bodies.append(EventLabel + body)
                        }
                        
                        if let body = element["title"] as? String {
                             self.bodies.append(body + " See details >")
                        }
                        
                        
                    })
                    
                    // reload tableview on main thread to avoid corruption
                    DispatchQueue.main.sync {
                        //self.tableView.reloadData()
                    }
                }
            }
            
            }.resume()
    }
   
}

