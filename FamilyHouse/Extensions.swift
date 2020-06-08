//
//  Extensions.swift
//  test3
//
//  Created by Jeffrey Seaman on 3/15/20.
//  Copyright © 2020 PPU. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    //Colors that is being used in the App for FamilyHouse
    static let familyhouseGreen = UIColor().colorFromHex("6FD1BE")
    static let familyhouseRed = UIColor().colorFromHex("E26666")
    static let familyhouseYellow = UIColor().colorFromHex("D8BF49")
    static let familyhouseBlue = UIColor().colorFromHex("39B4D1")
    static let familyhouseGrey = UIColor().colorFromHex("4D4D4D")
    static let familyhouseBlack = UIColor().colorFromHex("#4D4D4D")
    static let familyhouseWhite = UIColor().colorFromHex("#FFFFFF")
    
    convenience init(hex:Int, alpha:CGFloat = 1.0) {
        self.init(
            red:   CGFloat((hex & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((hex & 0x00FF00) >> 8)  / 255.0,
            blue:  CGFloat((hex & 0x0000FF) >> 0)  / 255.0,
            alpha: alpha
        )
    }
    
    func colorFromHex(_ hex : String) -> UIColor {
        var hexString = hex.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        
        if hexString.hasPrefix("#") {
            hexString.remove(at: hexString.startIndex)
        }
        
        if hexString.count != 6 {
            return UIColor.black
        }
        
        var rgb : UInt64 = 0
        Scanner(string: hexString).scanHexInt64(&rgb)
        
        return UIColor.init(
                red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
                green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
                blue: CGFloat(rgb & 0x0000FF) / 255.0,
                alpha: 1.0)
    }
    
}

extension UIView {

    func rotate(_ toValue: CGFloat, duration: CFTimeInterval = 0.2) {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        
        animation.toValue = toValue
        animation.duration = duration
        animation.isRemovedOnCompletion = false
        animation.fillMode = CAMediaTimingFillMode.forwards
        
        self.layer.add(animation, forKey: nil)
    }

}

