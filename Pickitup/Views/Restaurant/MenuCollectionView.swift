//
//  RestaurantCollectionView.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-03-10.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class MenuCollectionView : UICollectionView {
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        super.init(frame: frame, collectionViewLayout: UICollectionViewFlowLayout())
        self.disableTranslatesAutoresizingMaskIntoConstraints()
        self.setBackgroundColor(color: SysColors.systemBackground)
        self.register(MenuCollectionViewCell.self, forCellWithReuseIdentifier: MenuCollectionViewCell.identifier)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
