//
//  UIViewController+Extensions.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-21.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    @discardableResult
    func setNavigationTitleWithDefaultTheme(title: String) -> UIViewController {
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: SysColors.systemRed]
        self.title = title
        
        return self
    }
    
}
