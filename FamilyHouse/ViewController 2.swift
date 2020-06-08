//
//  ViewController.swift
//  FamilyHouse
//
//  Created by Jeffrey Seaman on 3/19/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = .familyhouseWhite
        navBar?.tintColor = UIColor.black
        navBar?.isTranslucent = false
        navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.black]
        setupFamilyHouseLogo() //Sets the Image in the center
        setupContactButton() //Sets the contact icon on the right side of the navigation menu
    }

    func setupFamilyHouseLogo() {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 40))
        imageView.contentMode = .scaleAspectFit

        let image = UIImage(named: "FHLogo")
        imageView.image = image

        navigationItem.titleView = imageView
     
        
    }
    
    func setupContactButton() {
        let menuBtn = UIButton(type: .custom)
        menuBtn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
        menuBtn.setImage(UIImage(named:"contactHome"), for: .normal)
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

