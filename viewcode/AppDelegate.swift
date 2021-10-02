//
//  AppDelegate.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 29/09/21.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        let window = UIWindow(frame: UIScreen.main.bounds)
        let controller = ViewController()
        window.rootViewController = controller
        self.window = window
        window.makeKeyAndVisible()
        
        return true
    }

}

