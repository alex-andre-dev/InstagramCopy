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
        
        let feed = FeedController()
        
        let search = SearchController()
        
        let imgSelector = ImageSelectorController()
        
        let notification = NotificationsController()
        
        let profile = ProfileController()
        
        viewControllers = [feed,search,imgSelector,notification,profile]
        
    }

}
