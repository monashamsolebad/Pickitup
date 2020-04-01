//
//  RestaurantCollectionViewCell.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-03-10.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class MenuCollectionViewCell : UICollectionViewCell{
    
    static var identifier: String = "menuCell"
    let mainStackView = UIStackView()
    var imageView = UIImageView()
    let foodNameLabel = UILabel()
    let foodDescriptionLabel = UILabel()
    let foodPriceLabel = UILabel()
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.disableTranslatesAutoresizingMaskIntoConstraints()
        initSubViews()
    }
    
    func initSubViews() {
        setupMainStackView()
        setupFoodNameLabel()
        setupFoodDescriptionLabel()
        setupFoodPriceLabel()
        setupImage()
    }
    
    func setupFoodNameLabel() {
        foodNameLabel
            .setForegroundColor(color: SysColors.systemLabel)
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "Scallop Salad", ofSize: 15)
            .setHeight(height: 20)
    }
    
    func setupFoodDescriptionLabel() {
        foodDescriptionLabel
            .setForegroundColor(color: SysColors.systemLabel)
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "sea scallops,fresh minced chives,...", ofSize: 12)
            .setHeight(height: 20)
    }
    
    func setupFoodPriceLabel() {
        foodPriceLabel
            .setForegroundColor(color: SysColors.systemLabel)
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "$11.25", ofSize: 15)
            .setHeight(height: 20)
    }
    
    func setupMainStackView() {
        self.addSubview(mainStackView)
        mainStackView
            .addArrangedSubviews(views: [imageView,foodNameLabel,foodDescriptionLabel,foodPriceLabel, UIView()])
        .setVertical()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
            .fillSafeAreaWithDefaultMargin()
    }
    
    func setupImage(){
        let img = UIImage(named: "salad2")!
        imageView
            .setImage(image: img)
            .setContentMode(contentMode: .scaleAspectFill)
            .setClipsToBounds(clipsToBounds: true)
            .setCornerRadius(radius: 10)
            .setHeight(height: 150)
            .setShadow()
        
    }
}
