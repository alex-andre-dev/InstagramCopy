//
//  MainTabController.swift
//  Instagram
//
//  Created by Alexandre  Machado on 12/07/23.
//

import UIKit

class MainTabController: UITabBarController {
    
    //MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViewControllers()

    }
    //MARK: - Helpers
    
    func configureViewControllers() {
        
        view.backgroundColor = .white
        self.tabBar.isTranslucent = false
        tabBar.tintColor = .black
        
        let feed = templateNavigationController(unselectedImage: UIImage(named: "home_unselected") , selectedImage: UIImage(named: "home_selected"), rootViewController: FeedController(collectionViewLayout: UICollectionViewFlowLayout()))
            
        let search = templateNavigationController(unselectedImage: UIImage(named: "search_unselected"), selectedImage: UIImage(named: "search_selected"), rootViewController: SearchController())
        
        let imgSelector = templateNavigationController(unselectedImage: UIImage(named: "plus_unselected"), selectedImage: UIImage(named: "plus_selected"), rootViewController: ImageSelectorController())
        
        let notification = templateNavigationController(unselectedImage: UIImage(named: "like_unselected"), selectedImage: UIImage(named: "like_selected"), rootViewController: NotificationsController())
        
        let profile = templateNavigationController(unselectedImage: UIImage(named: "profile_unselected"), selectedImage: UIImage(named: "profile_selected"), rootViewController: ProfileController())
        
        viewControllers = [feed,search,imgSelector,notification,profile]
        
    }
    
    func templateNavigationController(unselectedImage: UIImage?, selectedImage: UIImage?, rootViewController: UIViewController) -> UINavigationController {
        let nav = UINavigationController(rootViewController: rootViewController)
        nav.tabBarItem.image = unselectedImage
        nav.tabBarItem.selectedImage = selectedImage
        nav.navigationBar.tintColor = .black
        return nav
    }

}
