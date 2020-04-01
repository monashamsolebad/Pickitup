//
//  XUIView.swift
//  PickItUp
//
//  Created by Mona Shamsolebad on 2020-02-16.
//  Copyright © 2020 PickItUp Co. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    //    @discardableResult
    //    func widthEqualParent() -> UIView {
    //        self.widthAnchor.constraint(equalTo: superview!.widthAnchor, multiplier: 1.0).isActive = true@objc 
    //        return self
    //    }
    //
    //    @discardableResult
    //    func heightEqualParent() -> UIView {
    //        self.heightAnchor.constraint(equalTo: superview!.heightAnchor, multiplier: 1.0).isActive = true
    //        return self
    //    }
    
    @discardableResult
    func setWidth(width: CGFloat)  -> UIView {
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        return self
    }
    
    @discardableResult
    func setWidthMultiplierOf(view: UIView, multiplier: CGFloat)  -> UIView {
        self.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: multiplier).isActive = true
        return self
    }
    
    @discardableResult
    func setHeight(height: CGFloat) -> UIView {
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
        return self
    }
    
    //    @discardableResult
    //    func leadingSpaceToSafeArea(leftMargin: CGFloat) -> UIView {
    //        self.leadingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leadingAnchor, constant: leftMargin).isActive = true
    //        return self
    //    }
    //
    //    @discardableResult
    //    func trailingSpaceToSafeArea(rightMargin: CGFloat) -> UIView {
    //        self.trailingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.trailingAnchor, constant: rightMargin).isActive = true
    //        return self
    //    }
    //
    //    @discardableResult
    //    func bottomToSafeArea(bottomMargin: CGFloat) -> UIView {
    //        self.bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor, constant: bottomMargin).isActive = true
    //        return self
    //    }
    //
    //    @discardableResult
    //    func topToSafeArea(topMargin: CGFloat) -> UIView {
    //        self.topAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.topAnchor, constant: topMargin).isActive = true
    //        return self
    //    }
    //
    //    @discardableResult
    //    func above(view: UIView, bottomMargin: CGFloat) -> UIView {
    //        self.bottomAnchor.constraint(equalTo: view.topAnchor, constant: bottomMargin).isActive = true
    //        return self
    //    }
    //
    //    @discardableResult
    //    func under(view: UIView, topMargin: CGFloat) -> UIView {
    //        self.topAnchor.constraint(equalTo: view.bottomAnchor, constant: topMargin).isActive = true
    //        return self
    //    }
    
    @discardableResult
    func fillParent() -> UIView {
        self.topAnchor.constraint(equalTo: superview!.topAnchor).isActive = true
        self.leadingAnchor.constraint(equalTo: superview!.leadingAnchor).isActive = true
        self.widthAnchor.constraint(equalTo: superview!.widthAnchor).isActive = true
        self.heightAnchor.constraint(equalTo: superview!.heightAnchor).isActive = true
        return self
    }
    
    @discardableResult
    func fillSafeAreaWithDefaultMargin() -> UIView {
        self.topAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.topAnchor, constant: 16).isActive = true
        self.bottomAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.bottomAnchor, constant: -16).isActive = true
        self.leadingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        self.trailingAnchor.constraint(equalTo: superview!.safeAreaLayoutGuide.trailingAnchor, constant: -16).isActive = true
        
        return self
    }
    
    @discardableResult
    func setPostionToCenterOf(view: UIView) -> UIView {
        self.center = view.center
        
        return self
    }
    
    @discardableResult
    func setFrame(frame: CGRect) -> UIView {
        self.frame = frame
        return self
    }
    
    @discardableResult
    func setAlpha(alpha: CGFloat) -> UIView {
        self.alpha = alpha
        return self
    }
    
    @discardableResult
    func setBackgroundColor(color: UIColor) -> UIView {
        self.backgroundColor = color
        return self
    }
    
    @discardableResult
    func disableTranslatesAutoresizingMaskIntoConstraints() -> UIView {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
    }
    
    @discardableResult
    func setAsRootView() -> UIView {
        self
            .disableTranslatesAutoresizingMaskIntoConstraints()
            .setBackgroundColor(color: SysColors.systemBackground)
        
        return self
    }
    
    @discardableResult
    func setCornerRadius(radius: CGFloat) -> UIView {
        self.layer.cornerRadius = radius
        return self
    }
    
    @discardableResult
    func setShadow(scale: Bool = true) -> UIView {
        self.layer.shadowColor = UIColor.red.cgColor
        self.layer.shadowOpacity = 1.5
        self.layer.shadowOffset = CGSize(width: -1, height: 1)
        self.layer.shadowRadius = 1
        
        self.layer.shadowPath = UIBezierPath(rect: bounds).cgPath
        self.layer.shouldRasterize = true
        self.layer.rasterizationScale = scale ? UIScreen.main.scale : 1
        return self
    }
    
}
