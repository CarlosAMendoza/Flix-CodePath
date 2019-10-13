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
        
        let controller = MovieListViewController()
        let navigationController = UINavigationController(rootViewController: controller)
        
        window?.rootViewController = navigationController
        
        
        return true
    }


}

