//
//  SearchBar+Extensions.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-29.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

extension UISearchBar {
    
    @discardableResult
    func setPlaceHolder(placeHolder: String) -> UISearchBar {
        self.placeholder = placeHolder
        return self
    }
    
}
