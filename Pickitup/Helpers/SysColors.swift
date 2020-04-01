//
//  ColorCompatibility.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-20.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

public enum SysColors {
    public static var systemBackground: UIColor {
        if #available(iOS 13, *) {
            return .systemBackground
        }
        return UIColor(red: 1, green: 1, blue: 1, alpha: 1.0)
    }
    public static var systemRed: UIColor {
        if #available(iOS 13, *) {
            return .systemRed
        }
        return UIColor(red: 255/255, green: 59/255, blue: 48/255, alpha: 1.0)
    }
    public static var systemGray: UIColor {
        if #available(iOS 13, *) {
            return .systemGray
        }
        return UIColor(red: 142/255, green: 142/255, blue: 147/255, alpha: 1.0)
    }
    public static var systemGray2: UIColor {
        if #available(iOS 13, *) {
            return .systemGray2
        }
        return UIColor(red: 174/255, green: 174/255, blue: 178/255, alpha: 1.0)
    }
    public static var systemGray3: UIColor {
        if #available(iOS 13, *) {
            return .systemGray3
        }
        return UIColor(red: 199/255, green: 199/255, blue: 204/255, alpha: 1.0)
    }
    public static var systemGray4: UIColor {
        if #available(iOS 13, *) {
            return .systemGray4
        }
        return UIColor(red: 209/255, green: 209/255, blue: 214/255, alpha: 1.0)
    }
    public static var systemGray5: UIColor {
        if #available(iOS 13, *) {
            return .systemGray5
        }
        return UIColor(red: 229/255, green: 229/255, blue: 234/255, alpha: 1.0)
    }
    public static var systemGray6: UIColor {
        if #available(iOS 13, *) {
            return .systemGray6
        }
        return UIColor(red: 242/255, green: 242/255, blue: 247/255, alpha: 1.0)
    }
    public static var systemLabel: UIColor {
        if #available(iOS 13, *) {
            return .label
        }
        return .black
    }
}
