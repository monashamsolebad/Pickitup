//
//  MainTabBarViewController.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-24.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class MainTabBarViewController : UITabBarController {
    
    let homeVC = HomeViewController(collectionViewLayout: UICollectionViewFlowLayout())
    let orderVC = OrdersViewController()
    let accountVC = AccountViewController()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        homeVC.title = "Home"
        orderVC.title = "Orders"
        accountVC.title = "Account"
        homeVC.tabBarItem = UITabBarItem(tabBarSystemItem: .recents, tag: 0)
        orderVC.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 1)
        accountVC.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 2)
        let controllers = [homeVC,orderVC,accountVC]
        //self.viewControllers = controllers
        self.viewControllers = controllers.map { UINavigationController(rootViewController: $0)}
    
    }
}


