//
//  AppDelegate.swift
//  RootViewControllerSwapDemo
//
//  Created by Nomad Company on 9/21/18.
//  Copyright © 2018 Nomad Company. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder {
    //MARK: Properties
    var window: UIWindow?
    

    //MARK: Functions
    func preparedWindow() -> UIWindow {
        let rootVC = RootViewController()
        let window = UIWindow(frame: UIScreen.main.bounds)
        window.rootViewController = rootVC
        window.makeKeyAndVisible()
        return window
    }

    
    
}

extension AppDelegate: UIApplicationDelegate {
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        self.window = self.preparedWindow()
        return true
    }
}

