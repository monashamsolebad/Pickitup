//
//  DetailViewController.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-03-02.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit

class RestaurantViewController : UIViewController {
    
    let restaurantView = RestaurantView()
    let cellIdentifier = "menuCategoryCell"
    let categories = ["Most Ordered", "Appetizers", "Salads", "Sandwiches", "Drinks"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.largeTitleDisplayMode = .never
        setupView()
        restaurantView.menuCategoryTableView.dataSource = self
        restaurantView.menuCategoryTableView.delegate = self
        restaurantView.menuCategoryTableView.register(UITableViewCell.self, forCellReuseIdentifier: cellIdentifier)
    }
    
    func setupView(){
        self.view.addSubview(restaurantView)
        restaurantView.fillParent()
    }
}
extension RestaurantViewController : UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantView.menuCategoryTableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = categories[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let menuVC = MenuViewController()
        self.navigationController?.pushViewController(menuVC, animated: true)
        
    }
    
    
    
}


