//
//  ResturantCollectionViewCell.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-25.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class HomeCollectionViewCell : UICollectionViewCell {
    
    static var identifier: String = "restaurantCell"
    let mainStackView = UIStackView()
    let imageStackView = UIStackView()
    let detailStackView = UIStackView()
    let leftDetailstackView = UIStackView()
    let rightDetailStackView = UIStackView()
    let restaurantNameLabel = UILabel()
    let restaurantPriceRangeLabel = UILabel()
    let restaurantRateLabel = UILabel()
    let restaurantWaitingtimeLabel = UILabel()
    var imageView = UIImageView()
    
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.disableTranslatesAutoresizingMaskIntoConstraints()
        
        initSubViews()
    }
    
    func initSubViews() {
        
        
        setupImage()
        setupRestaurantNameLabel()
        //setupRestaurantPriceRangeLabel()
        //setupRestaurantRateLabel()
        //setupRestaurantWaitingTimeLabel()
        
        setupImageStackView()
        setupLeftDetailstackView()
        setupRightDetailStackView()
        setupDetailStackView()
        setupMainStackView()
    }
    
    func setupRestaurantNameLabel() {
        restaurantNameLabel
            .setForegroundColor(color: SysColors.systemLabel)
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "The Greens", ofSize: 20)
            .setHeight(height: 30)
    }
    
    func setupRestaurantPriceRangeLabel() {
        restaurantPriceRangeLabel
            .setLabelThemeSmallGray()
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "$$$", ofSize: 20)
            .setHeight(height: 30)
    }
    
    func setupRestaurantRateLabel() {
        restaurantRateLabel
            .setLabelThemeTitle()
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "4.6", ofSize: 20)
            .setHeight(height: 30)
    }
    
    func setupRestaurantWaitingTimeLabel() {
        restaurantWaitingtimeLabel
            .setLabelThemeSmallGray()
            .setTextAlignment(alignment: .left)
            .setTitleForNormal(title: "20-30 min", ofSize: 20)
            .setHeight(height: 30)
    }
    
    func updateUI(title: String) {
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
    
    func setupImageStackView(){
        imageStackView
            .addArrangedSubviews(views : [imageView])
            .setVertical()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
        
    }
    
    func setupDetailStackView(){
        detailStackView
            .addArrangedSubviews(views : [leftDetailstackView,rightDetailStackView])
            .setHorizontal()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
        
    }
    
    func setupLeftDetailstackView() {
        leftDetailstackView
            .addArrangedSubviews(views: [restaurantNameLabel,restaurantPriceRangeLabel])
            .setVertical()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
    }
    
    func setupRightDetailStackView() {
        rightDetailStackView
            .addArrangedSubviews(views: [restaurantRateLabel,restaurantWaitingtimeLabel])
            .setVertical()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
    }
    
    func setupMainStackView() {
        self.addSubview(mainStackView)
        mainStackView
            .addArrangedSubviews(views: [imageStackView,detailStackView])
            .setVertical()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
            .fillSafeAreaWithDefaultMargin()
        
    }
}


