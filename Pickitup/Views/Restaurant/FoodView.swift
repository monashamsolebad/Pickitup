//
//  FoodView.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-03-26.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class FoodView: UIView {
    
    var imageView = UIImageView()
    let mainStackView = UIStackView()
    let foodNameLabel = UILabel()
    let foodDescriptionLabel = UILabel()
    let orderButton =  UIButton()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.disableTranslatesAutoresizingMaskIntoConstraints()
        self.setBackgroundColor(color: SysColors.systemBackground)
        initSubViews()
    }
    func initSubViews(){
        setupMainStackView()
        setupImage()
        setupFoodNameLabel()
        setupFoodDescriptionLabel()
        setupOrderButton()
    }
    
    func setupImage(){
        let img = UIImage(named: "food1")!
        imageView
            .setImage(image: img)
            .setContentMode(contentMode: .scaleAspectFill)
            .setClipsToBounds(clipsToBounds: true)
            .setCornerRadius(radius: 10)
            .setHeight(height: 150)
            .setShadow()
    }
    
    func setupMainStackView() {
        self.addSubview(mainStackView)
        mainStackView
            .addArrangedSubviews(views: [imageView,foodNameLabel,foodDescriptionLabel,UIView(),orderButton])
            .setVertical()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
            .fillSafeAreaWithDefaultMargin()
    }
    
    func setupFoodNameLabel() {
        foodNameLabel
            .setForegroundColor(color: SysColors.systemLabel)
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "Signature Salad", ofSize: 20)
            .setHeight(height: 30)
    }
    
    func setupFoodDescriptionLabel() {
        foodDescriptionLabel
            .setForegroundColor(color: SysColors.systemLabel)
            .setNumberOfLines(numberOfLines: 4)
            .setLineBreakMode(mode: .byWordWrapping)
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "Simple, fresh ingredients and a light vinaigrette combine to create a salad light enough to serve as a starter course yet so diverse and robust that it can hold its own as a main entree. ", ofSize: 15)
            .setHeight(height: 30)
    }
    
    func setupOrderButton() {
        orderButton
            .setButtonThemeRed(title: "Add to Order")
    }
    
}
