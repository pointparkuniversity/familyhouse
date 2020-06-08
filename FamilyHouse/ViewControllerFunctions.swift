//
//  ViewControllerFunctions.swift
//  test3
//
//  Created by Jeffrey Seaman on 3/17/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import UIKit

class ViewControllerFunctions: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        //setupContactButton()
    }
    
  
    func setupContactButton(){
         let menuBtn = UIButton(type: .custom)
         menuBtn.frame = CGRect(x: 0.0, y: 0.0, width: 20, height: 20)
         menuBtn.setImage(UIImage(named:"contactalert"), for: .normal)
         //menuBtn.addTarget(self, action: #selector(ViewControllerLinens.onMenuButtonPressed(_:)), for: UIControl.Event.touchUpInside)
         
         let menuBarItem = UIBarButtonItem(customView: menuBtn)
         let currWidth = menuBarItem.customView?.widthAnchor.constraint(equalToConstant: 24)
         currWidth?.isActive = true
         let currHeight = menuBarItem.customView?.heightAnchor.constraint(equalToConstant: 24)
         currHeight?.isActive = true
         self.navigationItem.rightBarButtonItem = menuBarItem
    }

}
