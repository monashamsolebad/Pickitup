//
//  SignInView.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-19.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class SignInView : UIView {
    
    let mainStackView = UIStackView()
    let titleLabel = UILabel()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let signInButton =  UIButton()
    let createAccountStackView = UIStackView()
    let createAccountLabel = UILabel()
    let createAccountButton =  UIButton()
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.setAsRootView()
        initSubViews()
    }
    func initSubViews() {
        setupMainStackView()
        setupTitleLabel()
        setupEmailLabel()
        setupEmailTextField()
        setupPasswordLabel()
        setupPasswordTextField()
        setupSignInButton()
        setupCreateAccountStackView()
        setupCreateAccountLabel()
        setupCreateAccountButton()
        
    }
    
    func setupMainStackView(){
        self.addSubview(mainStackView)
        mainStackView
            .addArrangedSubviews(views: [UIView().setHeight(height: 20),
                                         titleLabel,
                                         emailLabel,
                                         emailTextField,
                                         passwordLabel,
                                         passwordTextField,
                                         UIView(),
                                         signInButton,
                                         createAccountStackView])
            .setVertical()
            .setSpacing(spacing: 5)
            .setCustomSpacing(spacing: 40, after: titleLabel)
            .setCustomSpacing(spacing: 20, after: emailTextField)
            .disableTranslatesAutoresizingMaskIntoConstraints()
            .fillSafeAreaWithDefaultMargin()
        
    }
    
    func setupTitleLabel() {
        titleLabel
            .setLabelThemeTitle()
            .setTextAlignment(alignment: .left)
            .setTitleForBold(title: "Sign In", ofSize: 30)
    }
    
    func setupEmailLabel(){
        emailLabel
            .setTitle(title: "Email")
    }
    
    func setupEmailTextField(){
        emailTextField
            .setTextFieldThemeDefault()
            .setPalceholder(placeholder: "Required")
            .setContentType(contentType: .emailAddress)
            .setKeyboardType(keyboardType: .emailAddress)
            .setReturnKeyType(returnKeyType: .next)
    }
    
    func setupPasswordLabel(){
        passwordLabel
            .setTitle(title: "Password")
    }
    
    func setupPasswordTextField(){
        passwordTextField
            .setTextFieldThemeDefault()
            .setPalceholder(placeholder: "Required")
            .setContentType(contentType: .password)
            .setReturnKeyType(returnKeyType: .done)
            .setSecure(secure: true)
    }
    
    func setupSignInButton() {
        signInButton
            .setButtonThemeRed(title: "Sign In")
    }
    
    func setupCreateAccountLabel(){
        createAccountLabel
            .setLabelThemeSmallGray()
            .setTextAlignment(alignment: .right)
            .setTitle(title: "Don't have an account? ")
    }
    
    func setupCreateAccountButton(){
        createAccountButton
            .setButtonThemeDefault(title: "Create Account")
        
    }
    
    func setupCreateAccountStackView() {
        createAccountStackView
            .addArrangedSubviews(views: [UIView(),
                                         createAccountLabel,
                                         createAccountButton,
                                         UIView()])
            .setHorizontal()
            .setSpacing(spacing: 5)
            .setDistribution(distribution: .equalSpacing)
    }
    
}

