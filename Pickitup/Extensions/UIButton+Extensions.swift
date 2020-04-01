//
//  XUIButton.swift
//  PickItUp
//
//  Created by Mona Shamsolebad on 2020-02-15.
//  Copyright © 2020 PickItUp Co. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    
    
    @discardableResult
    func setTitle(title: String, for state: UIButton.State) -> UIButton {
        self.setTitle(title, for: state)
        return self
    }
    
    @discardableResult
    func setTitleColor(color: UIColor, for state: UIButton.State) -> UIButton {
        self.setTitleColor(color, for: state)
        return self
    }
    
    @discardableResult
    func setShadow() -> UIButton {
        self.layer.shadowColor = UIColor(red: 0, green: 0, blue: 0, alpha: 0.25).cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 3.0)
        self.layer.shadowOpacity = 0.8
        self.layer.masksToBounds = false
        return self
    }
    
    @discardableResult
    func setTitleFontSize(size: CGFloat) -> UIButton {
        self.titleLabel?.font = UIFont.systemFont(ofSize: size)
        return self
    }
    
    @discardableResult
    func setButtonThemeRed(title: String) -> UIButton {
        self
            .setTitle(title: title, for: .normal)
            .setTitleColor(color: SysColors.systemGray4, for: .highlighted)
            .setShadow()
            .setBackgroundColor(color: SysColors.systemRed)
            .setHeight(height: 45)
            .setCornerRadius(radius: 5)
        
        return self
    }
    
    @discardableResult
    func setButtonThemeDefault(title: String) -> UIButton{
        self
            .setTitle(title: title, for: .normal)
            .setTitleColor(color: SysColors.systemGray, for: .normal)
            .setTitleColor(color: SysColors.systemGray4, for: .highlighted)
        
        return self
    }
}
