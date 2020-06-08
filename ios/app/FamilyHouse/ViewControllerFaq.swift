//
//  ViewControllerFaq.swift
//  test3
//
//  Created by Jeffrey Seaman on 3/15/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import UIKit


class ViewControllerFaq: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()

        let navBar = self.navigationController?.navigationBar
        navBar?.barTintColor = .familyhouseYellow
        navBar?.tintColor = UIColor.white
        navBar?.isTranslucent = false
        navBar?.titleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
        
        //let newvc = ViewControllerFunctions()
        //newvc.setupContactButton()
        
        //let vc = ViewControllerFaq()
        //vc.text = "faq"
        
        //setupContactButton()
    }
    
   

    func setupContactButton() {
        let menuBtn = UIButton(type: .custom)
        menuBtn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
        menuBtn.setImage(UIImage(named:"contactfaq"), for: .normal)
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
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

