//
//  UIStackView+Extensions.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-18.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

extension UIStackView {
    
    @discardableResult
    func setVertical() -> UIStackView {
        self.axis = .vertical
        return self
    }
    
    @discardableResult
    func setHorizontal() -> UIStackView {
        self.axis = .horizontal
        return self
    }
    
    @discardableResult
    func setSpacing(spacing: CGFloat) -> UIStackView {
        self.spacing = spacing
        return self
    }
    
    @discardableResult
    func addArrangedSubviews(views: [UIView]) -> UIStackView {
        for v in views{
            self.addArrangedSubview(v)
        }
        return self
    }
    
    @discardableResult
    func setDistribution(distribution: UIStackView.Distribution) -> UIStackView {
        self.distribution = distribution
        return self
    }
    
    @discardableResult
    func setCustomSpacing(spacing: CGFloat, after: UIView) -> UIStackView {
        self.setCustomSpacing(spacing, after: after)
        return self
    }
}
