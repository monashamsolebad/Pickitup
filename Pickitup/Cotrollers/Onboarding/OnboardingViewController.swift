//
//  WelcomeViewController.swift
//  PickItUp
//
//  Created by Mona Shamsolebad on 2020-02-15.
//  Copyright © 2020 PickItUp Co. All rights reserved.
//

import Foundation
import UIKit

class OnboardingViewController: UIViewController {
    
    let onboardingView = OnboardingView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupEvents()
    }
    
    func setupView(){
        self.view.addSubview(onboardingView)
        onboardingView.fillParent()
    }
    
    func setupEvents() {
        onboardingView.signInButton.addTarget(self, action: #selector(signInButtonPressed), for: .touchUpInside)
        onboardingView.getStartedButton.addTarget(self, action: #selector(getStartedButtonPressed), for: .touchUpInside)
    }
    
    @objc func signInButtonPressed(){
        let signinViewController = SignInViewController()
        signinViewController.modalPresentationStyle = .fullScreen
        show(signinViewController, sender: self)
    }
    
    @objc func getStartedButtonPressed(){
        let createAccountViewController = CreateAccountViewController()
        createAccountViewController.modalPresentationStyle = .fullScreen
        show(createAccountViewController, sender: self)
    }
}
