//
//  Coordinator.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 02/10/21.
//

import Foundation
import UIKit

protocol Coordinator {
    var navigationController: UINavigationController { get set }
    func start()
}
