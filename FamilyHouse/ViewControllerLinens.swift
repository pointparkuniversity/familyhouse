//
//  ViewControllerLinens.swift
//  test3
//
//  Created by Jeffrey Seaman on 3/7/20.
//  Modified by Jeffrey Seaman on 6/5/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import UIKit

//Declare Global Variables to collect data
var Towels = ""
var WashCloths = ""
var Bathmat = ""
var BlueBag = ""
var Sheets = ""
var SheetsTwin = ""
var SheetsQueen = ""
var RoomStr = ""
var house = ""
var datevalue = ""

class ViewControllerLinens: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    //var towel_increment = 0;
    //var guests_increment = 0;
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var HouseField: UITextField!
    @IBOutlet weak var GuestsField: UITextField!
    @IBOutlet weak var LastName: UITextField!
    @IBOutlet weak var btnSubmit: UIButton!
    @IBOutlet weak var Room: UITextField!
    
    
    
    
    /*
        Objects that represents the stepper for number of guests, towels, washcloths, bathmat,
        blue bag,Twin Sheets and Queen Sheets
     */
    
    @IBOutlet weak var stepperGuests: UIStepper!
    @IBOutlet weak var stepperTowels: UIStepper!
    @IBOutlet weak var stepperWashcloths: UIStepper!
    @IBOutlet weak var stepperBathmat: UIStepper!
    @IBOutlet weak var stepperBluebag: UIStepper!
    @IBOutlet weak var stepperTwinsheets: UIStepper!
    @IBOutlet weak var stepperQueensheets: UIStepper!
    @IBOutlet weak var stepperPillowcases: UIStepper!
    
    /*
        Objects that represents the labels to store the numeric value between 1-10 for number of guests, towels, washcloths, bathmat, blue bag,Twin Sheets and Queen Sheets
    */
    
    
    @IBOutlet weak var lblGuests: UILabel!
    @IBOutlet weak var lblTowels: UILabel!
    @IBOutlet weak var lblWashcloths: UILabel!
    @IBOutlet weak var lblBathmat: UILabel!
    @IBOutlet weak var lblBluebag: UILabel!
    @IBOutlet weak var lblTwinsheets: UILabel!
    @IBOutlet weak var lblQueensheets: UILabel!
    @IBOutlet weak var lblPillowcases: UILabel!
    
    
   
    
    
    
    /*
     Conditional statements for the choosing of the houses
    */
    let items = ["Neville","Shadyside","University Place"]
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
       return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        return items[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        return items.count
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int)
    {
        //let pickervalue = items[row]
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
                
        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = .familyhouseGreen
        navBar?.tintColor = UIColor.white
        navBar?.isTranslucent = false
        navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        
        /*
         Stepper Configuration for autorepeat, continous, min and max values
        */
        
        
        // This tells the stepper object that the minimum value starts at 1
        stepperGuests?.minimumValue = 1
        stepperTowels?.minimumValue = 1
        stepperWashcloths?.minimumValue = 1
        stepperBathmat?.minimumValue = 1
        stepperBluebag?.minimumValue = 1
        stepperTwinsheets?.minimumValue = 1
        stepperQueensheets?.minimumValue = 1
        stepperPillowcases?.minimumValue = 1
        
        // This tells the stepper object that the maximum value stops at 10
        stepperGuests?.maximumValue = 10
        stepperTowels?.maximumValue = 10
        stepperWashcloths?.maximumValue = 10
        stepperBathmat?.maximumValue = 10
        stepperBluebag?.maximumValue = 10
        stepperTwinsheets?.maximumValue = 10
        stepperQueensheets?.maximumValue = 10
        stepperPillowcases?.maximumValue = 10
       
        // Initializes the value at to start at 1
        lblGuests?.text = "\(Int(stepperGuests.value))"
        lblTowels?.text = "\(Int(stepperTowels.value))"
        lblWashcloths?.text = "\(Int(stepperWashcloths.value))"
        lblBathmat?.text = "\(Int(stepperBathmat.value))"
        lblBluebag?.text = "\(Int(stepperBluebag.value))"
        lblTwinsheets?.text = "\(Int(stepperTwinsheets.value))"
        lblQueensheets?.text = "\(Int(stepperQueensheets.value))"
        lblPillowcases?.text = "\(Int(stepperPillowcases.value))"

        //tepperGuests.autorepeat = true
        //stepperGuests.isEnabled = true
         
    }
    
    // Functions for the action event to have the label capture the value of the stepper object.
 
    @IBAction func stepperGuestsEvent(_ sender: UIStepper) {
        lblGuests?.text = "\(Int(stepperGuests.value))"
    }
    
    @IBAction func stepperTowelsEvent(_ sender: UIStepper) {
        lblTowels?.text = "\(Int(stepperTowels.value))"
    }
    
    
    @IBAction func stepperWashclothsEvent(_ sender: UIStepper) {
        lblWashcloths?.text = "\(Int(stepperWashcloths.value))"
    }
    
    
    @IBAction func stepperBathmatEvent(_ sender: UIStepper) {
        lblBathmat?.text = "\(Int(stepperBathmat.value))"
    }
    
    
    @IBAction func stepperBluebagEvent(_ sender: UIStepper) {
        lblBluebag?.text = "\(Int(stepperBluebag.value))"
    }
    
    @IBAction func stepperTwinsheetsEvent(_ sender: UIStepper) {
        lblTwinsheets?.text = "\(Int(stepperTwinsheets.value))"
    }
    
    
    @IBAction func stepperQueensheetsEvent(_ sender: UIStepper) {
        lblQueensheets?.text = "\(Int(stepperQueensheets.value))"
    }
    
    
    @IBAction func stepperPillowcasesEvent(_ sender: UIStepper) {
        lblPillowcases?.text = "\(Int(stepperPillowcases.value))"
    }
    
    
    func setupContactButton() {
           let menuBtn = UIButton(type: .custom)
           menuBtn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
           menuBtn.setImage(UIImage(named:"contactlinens"), for: .normal)
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
    
    
    @IBAction func btnSubmit(_ sender: UIButton) {
        //This calls the API Post reference
        LinensPost()
        
    }
    //This communicates with the Linens Post to the API
    func LinensPost() {

        
        var params = [String: String]()

        
        //This captures the selection from the houses and articulates based on the values in the db
        if(picker.selectedRow(inComponent: 0) == 0)
        {
             house = "1"
        } else if(picker.selectedRow(inComponent: 0) == 1) {
             house = "2"
        } else if(picker.selectedRow(inComponent: 0) == 2) {
             house = "3"
        }
        
        //This captures the current date and time
        let date = Date()
        let format = DateFormatter()
        format.dateFormat = "yyyy-MM-dd HH:mm:ss"
        let formattedDate = format.string(from: date)
        print(formattedDate)
        datevalue = formattedDate
        
        
        
              params["house"] = house
              params["room"] = Room?.text
              params["guests"] = lblGuests?.text
              params["towels"] = lblTowels?.text
              params["washcloths"] = lblWashcloths?.text
              params["bathmats"] = lblBathmat?.text
              params["bluebag"] = lblBluebag?.text
              params["date"] = datevalue
              params["twinsheets"] = lblTwinsheets?.text
              params["queensheets"] = lblQueensheets?.text
              params["pillowcases"] = lblPillowcases?.text
              params["isServed"] = "0"
              params["phoneID"] = "0"
              params["lastname"] = LastName?.text
        
        //var request = URLRequest(url: URL(string: "https://familyhouseadmin.org/api/v1/linens_request")!)
        var request = URLRequest(url: URL(string: "http://familyhouse.it.pointpark.edu:3000/api/v1/linens/")!)
        request.httpMethod = "POST"
        request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")

        let session = URLSession.shared
        let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
            //print(data)
            //print(response)
            //print(error)
        /*
           //(response!)
           do {
               let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
               //textView.text = (json)
           } catch {
               //textView.text = ("error")
           }
           */
        })
        task.resume()
    }
}

/*
// MARK: - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
    // Get the new view controller using segue.destination.
    // Pass the selected object to the new view controller.
}
*/

