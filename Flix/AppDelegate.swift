//
//  AppDelegate.swift
//  Flix
//
//  Created by Carlos Mendoza on 10/13/19.
//  Copyright © 2019 Carlos Mendoza. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()
        
        let movieListController = MovieListViewController()
        let movieListNavigationController = UINavigationController(rootViewController: movieListController)
        movieListNavigationController.tabBarItem = UITabBarItem(title: "Now Playing", image: #imageLiteral(resourceName: "now_playing_tabbar_item"), tag: 0)
        
        let superHeroController = SuperHeroCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let superHeroNavigationController = UINavigationController(rootViewController: superHeroController)
        superHeroNavigationController.tabBarItem = UITabBarItem(title: "Superhero", image: #imageLiteral(resourceName: "superhero_tabbar_item"), tag: 1)
        
        let tabBarController = UITabBarController()
        
        tabBarController.viewControllers = [movieListNavigationController,superHeroNavigationController]
        
        window?.rootViewController = tabBarController
        
        
        return true
    }


}

