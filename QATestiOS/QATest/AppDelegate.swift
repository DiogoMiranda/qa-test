//
//  AppDelegate.swift
//  QATest
//
//  Created by Eduardo Viegas on 6/13/16.
//  Copyright © 2016 Youse. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // MARK: UIApplicationDelegate
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        customizeStatusBar()
        
        return true
    }
    
    // MARK: Private
    
    fileprivate func customizeStatusBar() {
        UIApplication.shared.statusBarStyle = .lightContent
    }
}

