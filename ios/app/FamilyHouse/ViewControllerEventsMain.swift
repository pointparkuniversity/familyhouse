//
//  ViewControllerEventsMain.swift
//  FamilyHouse
//
//  Created by Seaman, Jeffrey on 6/1/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import UIKit

class ViewControllerEventsMain: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

         let navBar = self.navigationController?.navigationBar
               navBar?.barTintColor = .familyhouseBlue
               navBar?.tintColor = UIColor.white
               navBar?.isTranslucent = false
               navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    }
    

    

}
