//
//  ViewController.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-17.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        //decide which controller should be opened
        //goToOnboarding()
        goToTabBar()
    }
    
    func goToOnboarding() {
        let onboardingViewController = OnboardingViewController()
        onboardingViewController.modalPresentationStyle = .fullScreen
        show(onboardingViewController, sender: self)
    }
    
    func goToTabBar() {
          let tabBarViewController = MainTabBarViewController()
          tabBarViewController.modalPresentationStyle = .fullScreen
          show(tabBarViewController, sender: self)
      }
 
    
    
}

