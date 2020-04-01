//
//  UIImageView+Extensions.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-18.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

extension UIImageView {
    
    @discardableResult
    func setImage(image: UIImage) -> UIImageView {
        self.image = image
        return self
    }
    
    @discardableResult
    func setContentMode(contentMode: UIImageView.ContentMode) -> UIImageView {
        self.contentMode = contentMode
        return self
    }
    
    @discardableResult
    func setClipsToBounds(clipsToBounds: Bool) -> UIImageView {
        self.clipsToBounds = clipsToBounds
        return self
    }
}
