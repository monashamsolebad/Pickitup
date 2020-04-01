//
//  HomeViewController.swift
//  Pickitup
//
//  Created by Mona Shamsolebad on 2020-02-24.
//  Copyright © 2020 Pickitup Co. All rights reserved.
//

import Foundation
import UIKit


class HomeViewController : UICollectionViewController {
    
    let searchController = UISearchController(searchResultsController: nil)
    let homeCollectionView = HomeCollectionView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setNavigationTitleWithDefaultTheme(title: "Top picks for you")
        self.collectionView = homeCollectionView
        
        self.collectionView.register(HomeCollectionViewCell.self, forCellWithReuseIdentifier: HomeCollectionViewCell.identifier)
        
        setupSearchController()
    }
    
    func setupSearchController() {
        navigationItem.searchController = searchController
        searchController.searchResultsUpdater = self
        searchController.searchBar.setPlaceHolder(placeHolder: "Search for restaurants")
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HomeCollectionViewCell.identifier, for: indexPath) as! HomeCollectionViewCell
        
        return cell
    }
    
    override func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = RestaurantViewController()
        self.navigationController?.pushViewController(detailVC, animated: true)
    }
}

extension HomeViewController: UISearchResultsUpdating {
    
    func updateSearchResults(for searchController: UISearchController) {
           
           if searchController.searchBar.text!.count > 2 {
               print("search")
               homeCollectionView.showIndicator()
           }
           else {
               print("clear")
               homeCollectionView.hideIndicator()
           }
       }
       
}

extension HomeViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.bounds.width, height: 300)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        insetForSectionAt section: Int) -> UIEdgeInsets {
        return UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView,
                        layout collectionViewLayout: UICollectionViewLayout,
                        minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
   
}
