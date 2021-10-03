//
//  SceneDelegate.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 02/10/21.
//


import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = self.window ?? UIWindow()
        
        let mainView = ViewController()
        mainView.title = "TESTE DO WALLACE"
        
        let navigationController = UINavigationController()
        navigationController.viewControllers = [mainView]
        
        window?.backgroundColor = .green
        window?.windowScene = windowScene
        window?.rootViewController = navigationController
        window?.makeKeyAndVisible()
    }
}
