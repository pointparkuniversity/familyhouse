# IOS Sandbox
This is a sandbox that will be used during the semester, while we learn to program for IOS

### TableView Expansion
- This is an example project on how to create source code for drop down menus for IOS Programming
- Create a Title, and then have it drop down with answers. This will be used for the FAQ Page

### Linens Page
- This is the completed Linens screen.
- It has functionality that allows the user to input the House Name, Room Number, Guests, Linen Types
- Sends the data to the Linens API Post

## Details about the source code
**ViewControllerLinens.swift - Internet Permissions** -  b
```
    //Declare Global Variables to store data to be passed to the API
    var Towels = "";
    var WashCloths = "";
    var Bathmat = "";
    var BlueBag = "";
    var Sheets = "";
    var SheetsTwin = "";
    var SheetsQueen = "";
    
    //Each Checkbox is setup as a button to act as a checkbox
    //Each Linen Type uses this feature to control the checking and unchecking of the box
    //Object = 1 is what sets the global variable that is used in the API Post call
    
    @IBAction func btnTowels(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
        } else {
            sender.isSelected = true
            Towels = "1"
        }
    }
    
    //Function LinenPost: 
    //Description: This is used to make the API Post Call to the webservice
    //             The global variables are used to pass the data points to the API
    
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

```

