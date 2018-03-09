//
//  AppDelegate.swift
//  SB-UITemplate
//
//  Created by Sercan Burak AĞIR on 1.02.2018.
//  Copyright © 2018 Sercan Burak AĞIR. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        application.statusBarStyle = .lightContent
        
        //Clear NavBar Border
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationBarAppearace.shadowImage = UIImage()
        
        return true
    }

}

