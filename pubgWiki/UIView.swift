//
//  UIView.swift
//  pubgWiki
//
//  Created by Ryusei Tashiro on 2017/12/06.
//  Copyright © 2017年 Ryusei Tashiro. All rights reserved.
//

import UIKit

extension UIView {
    
    @IBInspectable var cornerRadius: CGFloat {
        get {
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
}
