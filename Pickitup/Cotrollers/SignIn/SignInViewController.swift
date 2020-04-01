//
//  SignInController.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-19.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class SignInViewController : UIViewController {
    
    let signinView = SignInView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupEvents()
    }
    
    func setupView(){
        self.view.addSubview(signinView)
        signinView.fillParent()
    }
    
    func setupEvents() {
        signinView.signInButton.addTarget(self, action: #selector(signInButtonPressed), for: .touchUpInside)
        signinView.createAccountButton.addTarget(self, action: #selector(createAccountButtonPressed), for: .touchUpInside)
    }
    
    @objc func signInButtonPressed(){

    }
    
    @objc func createAccountButtonPressed(){
        let createAccountViewController = CreateAccountViewController()
        createAccountViewController.modalPresentationStyle = .fullScreen
        show(createAccountViewController, sender: self)
    }
}
