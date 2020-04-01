//
//  CreateAccountView.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-19.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class CreateAccount : UIView {
    
    let mainStackView = UIStackView()
    let signinStackView = UIStackView()
    let titleLabel = UILabel()
    let nameLabel = UILabel()
    let nameTextField = UITextField()
    let emailLabel = UILabel()
    let emailTextField = UITextField()
    let phoneLabel = UILabel()
    let phoneTextField = UITextField()
    let passwordLabel = UILabel()
    let passwordTextField = UITextField()
    let createAccountButton =  UIButton()
    let signinLabel = UILabel()
    let signinButton =  UIButton()
    
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
        setupNameLabel()
        setupNameTextField()
        setupEmailLabel()
        setupEmailTextField()
        setupPhoneLabel()
        setupPhoneTextField()
        setupPasswordLabel()
        setupPasswordTextField()
        setupCreateAccountButton()
        setupSigninStackView()
        setupSigninLabel()
        setupSigninButton()
    }
    
    func setupMainStackView(){
        self.addSubview(mainStackView)
        mainStackView
            .addArrangedSubviews(views: [UIView().setHeight(height: 20),
                                         titleLabel,
                                         nameLabel,
                                         nameTextField,
                                         emailLabel,
                                         emailTextField,
                                         phoneLabel,
                                         phoneTextField,
                                         passwordLabel,
                                         passwordTextField,
                                         UIView(),
                                         createAccountButton,
                                         signinStackView])
            .setVertical()
            .setSpacing(spacing: 5)
            .setCustomSpacing(spacing: 40, after: titleLabel)
            .setCustomSpacing(spacing: 20, after: nameTextField)
            .setCustomSpacing(spacing: 20, after: emailTextField)
            .setCustomSpacing(spacing: 20, after: phoneTextField)
            .disableTranslatesAutoresizingMaskIntoConstraints()
            .fillSafeAreaWithDefaultMargin()
        
    }
    
    func setupTitleLabel() {
        titleLabel
            .setLabelThemeTitle()
            .setTitleForBold(title: "Create Account", ofSize: 30)
    }
    
    func setupNameLabel(){
        nameLabel
            .setTitle(title: "Name")
    }
    
    func setupNameTextField(){
        nameTextField
            .setTextFieldThemeDefault()
            .setPalceholder(placeholder: "Required")
            .setContentType(contentType: .name)
            .setReturnKeyType(returnKeyType: .next)
        
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
    
    func setupPhoneLabel(){
        phoneLabel
            .setTitle(title: "Phone")
    }
    
    func setupPhoneTextField(){
        phoneTextField
            .setTextFieldThemeDefault()
            .setPalceholder(placeholder: "Required")
            .setContentType(contentType: .telephoneNumber)
            .setKeyboardType(keyboardType: .phonePad)
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
            .setContentType(contentType: .newPassword)
            .setReturnKeyType(returnKeyType: .done)
            .setSecure(secure: true)
    }
    
    
    func setupCreateAccountButton() {
        createAccountButton
            .setButtonThemeRed(title: "Create Account")
    }
    
    func setupSigninLabel(){
        signinLabel
            .setLabelThemeSmallGray()
            .setTextAlignment(alignment: .right)
            .setTitle(title: "Already have an account?")
    }
    
    func setupSigninButton(){
        signinButton
            .setButtonThemeDefault(title: "Sign In")
        
    }
    
    
    func setupSigninStackView() {
        signinStackView
            .addArrangedSubviews(views: [UIView(),
                                         signinLabel,
                                         signinButton,
                                         UIView()])
            .setHorizontal()
            .setSpacing(spacing: 5)
            .setDistribution(distribution: .equalSpacing)
    }
    
}
