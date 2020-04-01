//
//  WelcomeView.swift
//  PickItUp
//
//  Created by Mona Shamsolebad on 2020-02-15.
//  Copyright © 2020 PickItUp Co. All rights reserved.
//

import Foundation
import UIKit

class OnboardingView: UIView {
    
    let mainStackView = UIStackView()
    let imageView = UIImageView()
    let titleLabel = UILabel()
    let detailLabel = UILabel()
    let getStartedButton = UIButton()
    let signInButton =  UIButton()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setAsRootView()
        initSubViews()
    }
    
    func initSubViews() {
        setupImageView()
        setupTitleLabel()
        setupDetailLabel()
        setupGetStartedButton()
        setupSignInButton()
        setupMainStackView()
    }
    
    func setupMainStackView(){
        self.addSubview(mainStackView)
        mainStackView
            .addArrangedSubviews(views: [UIView(),
                                         imageView,
                                         titleLabel,
                                         detailLabel,
                                         getStartedButton,
                                         signInButton,
                                         UIView().setHeight(height: 30)])
            .setVertical()
            .setSpacing(spacing: 5)
            .disableTranslatesAutoresizingMaskIntoConstraints()
            .fillSafeAreaWithDefaultMargin()
    }
    
    func setupImageView(){
        imageView
            .setImage(image: UIImage(named: "onboarding-image-1")!)
            .setContentMode(contentMode: .scaleAspectFit)
            .setHeight(height: 300)
    }
    
    func setupTitleLabel(){
        titleLabel
            .setTextAlignment(alignment: .center)
            .setForegroundColor(color: SysColors.systemRed)
            .setTitleForBold(title: "Order Anywhere", ofSize: 20)
    }
    
    func setupDetailLabel(){
        detailLabel
            .setNumberOfLines(numberOfLines: 2)
            .setTextAlignment(alignment: .center)
            .setForegroundColor(color: SysColors.systemGray)
            .setTitleForNormal(title: "Find food you love from amazing \n local restaurants and chain favorites.", ofSize: 15)
            .setHeight(height: 50)
    }
    
    func setupGetStartedButton() {
        getStartedButton
            .setButtonThemeRed(title: "Get Started")
    }
    
    func setupSignInButton() {
        signInButton
            .setButtonThemeDefault(title: "Sign In")
    }
    
}
