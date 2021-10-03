//
//  ViewController.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 29/09/21.
//

import UIKit

class ViewController: UIViewController {
    
    let screen = LoginScreen()
    
    override func loadView() {
        self.view = screen
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
