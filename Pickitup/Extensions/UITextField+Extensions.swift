//
//  UITextView+Extensions.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-19.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    
    @discardableResult
    func setForegroundColor(color: UIColor) -> UITextField {
        self.textColor = color
        return self
    }
    
    @discardableResult
    func setTextAlignment(alignment: NSTextAlignment) -> UITextField {
        self.textAlignment = alignment
        return self
    }
    
    @discardableResult
    func setPalceholder(placeholder: String) -> UITextField {
        self.placeholder = placeholder
        return self
    }
    
    @discardableResult
    func setTextFieldThemeDefault() -> UITextField {
        self.setHeight(height: 50)
        return self
    }
    
    
    @discardableResult
    func setContentType(contentType: UITextContentType) -> UITextField {
        self.textContentType = contentType
        return self
    }
    
    @discardableResult
    func setKeyboardType(keyboardType: UIKeyboardType) -> UITextField {
        self.keyboardType = keyboardType
        return self
    }
    
    @discardableResult
    func setReturnKeyType(returnKeyType: UIReturnKeyType) -> UITextField {
        self.returnKeyType = returnKeyType
        return self
    }
    
    @discardableResult
    func setSecure(secure: Bool) -> UITextField {
        self.isSecureTextEntry = secure
        return self
    }
}
