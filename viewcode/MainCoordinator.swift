//
//  MainCoordinator.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 02/10/21.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    var navigationController: UINavigationController

    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = LoginViewController()
        navigationController.pushViewController(vc, animated: true)
    }
}
