//
//  KECircleButton.swift
//  KECircleSideMenu
//
//  Created by Kaan Esin on 10.01.2020.
//  Copyright © 2020 Kaan Esin. All rights reserved.
//

import UIKit

@IBDesignable
class KECircleButton: UIButton {
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
//    @IBInspectable var cornerRadius: CGFloat = 0 {
//        didSet {
//            layer.cornerRadius = cornerRadius
//            layer.masksToBounds = cornerRadius > 0
//        }
//    }
    
    @IBInspectable var borderWidth: CGFloat  {
       get {
           return layer.cornerRadius
       }
       set {
           layer.borderWidth = newValue
       }
    }
    
    @IBInspectable var borderColor: UIColor? {
       get {
        guard let bc = layer.borderColor else { return .clear }
        return UIColor(cgColor: bc)
       }
       set {
           layer.borderColor = newValue?.cgColor
       }
    }
}
