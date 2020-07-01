//
//  ViewControllerAlerts.swift
//  test3
//
//  Created by Jeffrey Seaman on 3/15/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import UIKit

class ViewControllerAlerts: UIViewController, UITableViewDelegate, UITableViewDataSource {

    //var bodies: [cellData] = []
    var bodies: [String] = []
    
    @IBOutlet weak var tableView: UITableView!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = .familyhouseRed
        navBar?.tintColor = UIColor.white
        navBar?.isTranslucent = false
        navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        //Build the contact button on the top navigation menu
        //setupContactButton()
        getCall()
    }
    
    func setupContactButton() {
        let menuBtn = UIButton(type: .custom)
        menuBtn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
        menuBtn.setImage(UIImage(named:"contactalert"), for: .normal)
        //--> this will be where we provide a redirect
        
        // set the menu bar
        let menuBarItem = UIBarButtonItem(customView: menuBtn)
        
        //set width
        let currWidth = menuBarItem.customView?.widthAnchor.constraint(equalToConstant: 24)
        currWidth?.isActive = true
        
        //set the height
        let currHeight = menuBarItem.customView?.heightAnchor.constraint(equalToConstant: 24)
        currHeight?.isActive = true
        
        self.navigationItem.rightBarButtonItem = menuBarItem //positions where the item will be located
    }
    
    /// Defines how many rows we want in the tableview
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bodies.count
    }
    
    /// Defines our cells in the tableview
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = bodies[indexPath.row]
        cell.textLabel?.numberOfLines = 0
        return cell
    }
    
    /// Code for a GET call
    func getCall() {
        
        // set the url
        //let url = URL(string: "https://jsonplaceholder.typicode.com/posts")!
        let url = URL(string: "https://familyhouseadmin.org/api/v1/events")!
        
        // request to define all the options for our API call
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        
        // adding a placeholder authorization header
        request.addValue("auth_token", forHTTPHeaderField: "auth_header")
        
        // setting timeout of API call to be 10 seconds
        request.timeoutInterval = 10
        
        // start the session to start the call and receive our response
        let session = URLSession.shared
        session.dataTask(with: request) { (data, response, error) in
            
            // print out response to let us know more information about the call
            if let response = response {
                print(response)
            }
            
            // receive the data
            do {
                // turning the data into a json object
                if let data = data, let json = try? JSONSerialization.jsonObject(with: data, options: []) as? [[String: Any]] {
                    
                    // looping through each object in the json object
                    json.forEach({ element in
                        
                        // if a key "body" exists, add it to the array
                         let eventdate = element["event_date"] as? String
                            if let body = element["title"] as? String {
                            self.bodies.append("Event: " + body + " Date " + eventdate!)
                        }
                    })
                    
                    // reload tableview on main thread to avoid corruption
                    DispatchQueue.main.sync {
                        self.tableView.reloadData()
                    }
                }
            }
            
            }.resume()
    }
    

}

