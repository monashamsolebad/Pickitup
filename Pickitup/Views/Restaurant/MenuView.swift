//
//  MenuView.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-03-30.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class MenuView: UIView {
    
    let mainStackView = UIStackView()
    let menuCollectionView = MenuCollectionView()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.disableTranslatesAutoresizingMaskIntoConstraints()
        self.setBackgroundColor(color: SysColors.systemBackground)
    }
    
    override func layoutSubviews() {
        initSubViews()
    }
    
    func initSubViews(){
        setupMainStackView()
    }
    
    func setupMainStackView() {
        self.addSubview(mainStackView)
        mainStackView
            .addArrangedSubviews(views: [menuCollectionView])
            .setVertical()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
            .fillSafeAreaWithDefaultMargin()
    }
}
