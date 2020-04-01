//
//  CreateAccountViewController.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-19.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class CreateAccountViewController : UIViewController {
    
    let createAccountView = CreateAccount()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupEvents()
    }
    
    
    func setupView() {
        self.view.addSubview(createAccountView)
        createAccountView.fillParent()
    }
    
    func setupEvents() {
        createAccountView.signinButton.addTarget(self, action: #selector(signInButtonPressed), for: .touchUpInside)
        createAccountView.createAccountButton.addTarget(self, action: #selector(createAccountButtonPressed), for: .touchUpInside)
    }
    
    @objc func createAccountButtonPressed(){
        
    }
    
    @objc func signInButtonPressed(){
        let signinViewController = SignInViewController()
        signinViewController.modalPresentationStyle = .fullScreen
        show(signinViewController, sender: self)
    }
}
