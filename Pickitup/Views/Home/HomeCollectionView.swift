//
//  ResturantCollectionView.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-25.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class HomeCollectionView : UICollectionView {
    
    let fadeView:UIView = UIView()
    let indicatorView = UIActivityIndicatorView()
    var indicatorInitiated = false
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: UICollectionViewFlowLayout())
        self.disableTranslatesAutoresizingMaskIntoConstraints()
        self.setBackgroundColor(color: SysColors.systemBackground)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func initSubviews() {
        setupFadeView()
        setupIndicator()
    }
    
    func setupFadeView() {
        self.addSubview(fadeView)
        
        fadeView
            .setFrame(frame: self.frame)
            .fillParent()
            .setBackgroundColor(color: SysColors.systemBackground)
        
        self.sendSubviewToBack(fadeView)
    }
    
    func setupIndicator() {
        fadeView.addSubview(indicatorView)
        indicatorView.setPostionToCenterOf(view: fadeView)
    }
    
    func showIndicator() {
        if !indicatorInitiated {
            initSubviews()
            indicatorInitiated = true
        }
        
        if !indicatorView.isAnimating {
            self.bringSubviewToFront(fadeView)
            indicatorView.startAnimating()
        }
    }
    
    func hideIndicator() {
        if indicatorView.isAnimating {
            indicatorView.stopAnimating()
            self.sendSubviewToBack(fadeView)
        }
    }
    
}
