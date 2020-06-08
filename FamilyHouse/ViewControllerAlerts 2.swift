//
//  ViewControllerAlerts.swift
//  test3
//
//  Created by Jeffrey Seaman on 3/15/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import UIKit

class ViewControllerAlerts: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = .familyhouseRed
        navBar?.tintColor = UIColor.white
        navBar?.isTranslucent = false
        navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        //Build the contact button on the top navigation menu
        setupContactButton()
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
    
    
    
    
   
    

    

}

