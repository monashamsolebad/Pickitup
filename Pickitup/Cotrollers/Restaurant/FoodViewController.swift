//
//  FoodViewController.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-03-26.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class FoodViewController: UIViewController {
    let foodView = FoodView()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        self.navigationItem.largeTitleDisplayMode = .never
        view.backgroundColor = .blue
        setupView()
        setupEvents()
    }
    func setupView(){
           self.view.addSubview(foodView)
           foodView.fillParent()
       }
    
    func setupEvents() {
        foodView.orderButton.addTarget(self, action: #selector(orderButtonPressed), for: .touchUpInside)
    }
    
    @objc func orderButtonPressed(){
           let ordersViewController = OrdersViewController()
           ordersViewController.modalPresentationStyle = .fullScreen
           show(ordersViewController, sender: self)
       }
    
    
}
