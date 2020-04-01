//
//  XUILabel.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-18.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    @discardableResult
    func setForegroundColor(color: UIColor) -> UILabel {
        self.textColor = color
        return self
    }
    
    @discardableResult
    func setTitleForBold(title: String, ofSize: CGFloat) -> UILabel {
        self.text = title
        self.font = .boldSystemFont(ofSize: ofSize)
        return self
    }
    
    @discardableResult
    func setTitleForNormal(title: String, ofSize: CGFloat) -> UILabel {
        self.text = title
        self.font = .systemFont(ofSize: ofSize)
        return self
    }
    
    @discardableResult
    func setTitle(title: String) -> UILabel {
        self.text = title
        return self
    }
    
    @discardableResult
    func setTextAlignment(alignment: NSTextAlignment) -> UILabel {
        self.textAlignment = alignment
        return self
    }
    
    @discardableResult
    func setNumberOfLines(numberOfLines: Int) -> UILabel {
        self.numberOfLines = numberOfLines
        return self
    }
    
    @discardableResult
    func setLabelThemeSmallGray() -> UILabel {
        self
            .setForegroundColor(color: SysColors.systemGray3)
            .font = .systemFont(ofSize: 15)
        return self
    }
    
    @discardableResult
    func setLabelThemeTitle() -> UILabel {
        self
            .setForegroundColor(color: SysColors.systemRed)
            .font = .systemFont(ofSize: 40)
        return self
    }
    
    @discardableResult
    func setLineBreakMode(mode: NSLineBreakMode) -> UILabel {
        self.lineBreakMode = mode
        return self
    }
}
