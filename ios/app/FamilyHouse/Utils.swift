//
//  Utils.swift
//  FamilyHouse
//
//  Created by Mark Voortman on 5/30/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import Foundation

class Utils {
    static func fetchFaqData(sectionname: String, callback: @escaping (_ result:[cellData])->()) {
        // Asynchronous Http call to your api url, using URLSession:
        URLSession.shared.dataTask(with: URL(string: "https://familyhouseadmin.org/api/v1/faq")!) { (data, response, error) -> Void in
            // Check if data was received successfully
            if error == nil && data != nil {
                do {
                    // Convert to dictionary where keys are of type String, and values are of any type
                    let json = try JSONSerialization.jsonObject(with: data!, options: []) as! [AnyObject]
                    for entry in json {
                        if let section = entry as? [String: Any] {
                            let name = section["name"] as! String
                            if name == sectionname {
                                if let items = section["items"] as? [AnyObject] {
                                    var newdata = [cellData]()
                                    for item in items {
                                        let question = item["question"] as! String
                                        let answer = item["answer"] as! String
                                        newdata.append(cellData(opened: false, title: question, sectionData: ["",answer,""]))
                                    }
                                    callback(newdata)
                                }
                            }
                        }
                    }
                } catch {
                    // Something went wrong
                    print("ERROR: Utils.fetchFaqData: something went wrong")
                }
            }
        }.resume()
    }
}
