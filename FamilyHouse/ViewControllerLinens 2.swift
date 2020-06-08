//
//  ViewControllerLinens.swift
//  test3
//
//  Created by Jeffrey Seaman on 3/7/20.
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

class ViewControllerLinens: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    var towel_increment = 0;
    
    @IBOutlet weak var picker: UIPickerView!
    @IBOutlet weak var HouseField: UITextField!
    @IBOutlet weak var RoomNumberField: UITextField!
    @IBOutlet weak var GuestsField: UITextField!
    
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
        let pickervalue = items[row]
    }
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = .familyhouseGreen
        navBar?.tintColor = UIColor.white
        navBar?.isTranslucent = false
        navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        //Build Button icon
        setupContactButton()
       
    }
    

    @IBOutlet weak var textTowels: UITextField!
    @IBAction func btnAddTowel(_ sender: UIButton) {
        towel_increment = Int(textTowels.text!)!
        self.textTowels.text = String(towel_increment + 1)
    }
    
    @IBAction func btnSubTowel(_ sender: UIButton) {
        towel_increment = Int(textTowels.text!)!
               self.textTowels.text = String(towel_increment - 1)
    }
    
    @IBAction func stepper_towels(_ sender: UIStepper) {
        txtTowels.text = String(Int(sender.value))

    }
    
    @IBOutlet weak var txtTowels: UITextField!
   
    
   
    
   
  
    
    //Submit Button when the user selects this action event
    @IBAction func btnSubmit(_ sender: UIButton) {
        //Action Event will call Function that will call the API
        LinensPost()
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
    
    func LinensPost() {
        let params = ["HouseName":HouseField.text!, "RoomNumber":RoomNumberField.text!, "Guests":GuestsField.text!, "LTTowels":Towels,"LTWashCloth":WashCloths, "LTBathMat":Bathmat,"LTBlueBag":BlueBag,"LTSheets":Sheets, "LTSheetsTwin":SheetsTwin,"LTSheetsQueen":SheetsQueen] as Dictionary<String, String>

               var request = URLRequest(url: URL(string: "http://familyhouse.it.pointpark.edu/api/v1/linens")!)
               request.httpMethod = "POST"
               request.httpBody = try? JSONSerialization.data(withJSONObject: params, options: [])
               request.addValue("application/json", forHTTPHeaderField: "Content-Type")

               let session = URLSession.shared
               let task = session.dataTask(with: request, completionHandler: { data, response, error -> Void in
                   //(response!)
                   do {
                       let json = try JSONSerialization.jsonObject(with: data!) as! Dictionary<String, AnyObject>
                       //textView.text = (json)
                   } catch {
                       //textView.text = ("error")
                   }
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



