//
//  HomeDetailView.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-03-02.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class RestaurantView : UIView {
    
    let mainStackView = UIStackView()
    var imageView = UIImageView()
    let restaurantNameLabel = UILabel()
    let openingStatusLabel = UILabel()
    let menuCategoryTableView = UITableView()
    
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
        setupTableView()
    }
    func setupTableView() {
        menuCategoryTableView.alwaysBounceVertical = false
        menuCategoryTableView.tableFooterView = UIView()
    }
    
    func initSubViews(){
        setupMainStackView()
        setupImage()
        setupRestaurantNameLabel()
        setupOpeningStatusLabel()
    }
    
    func setupImage(){
        
        let img = UIImage(named: "res1")!
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
            .addArrangedSubviews(views: [imageView, restaurantNameLabel, openingStatusLabel, UIView().setHeight(height: 30), menuCategoryTableView])
            .setVertical()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
            .fillSafeAreaWithDefaultMargin()
    }
    
    func setupRestaurantNameLabel() {
        restaurantNameLabel
            .setForegroundColor(color: SysColors.systemLabel)
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "The Greens", ofSize: 20)
            .setHeight(height: 30)
    }
    
    func setupOpeningStatusLabel() {
        openingStatusLabel
            .setForegroundColor(color: SysColors.systemRed)
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "Open Now", ofSize: 15)
            .setHeight(height: 20)
    }
    
    
}
