//
//  ViewControllerScreen.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 29/09/21.
//

import Foundation
import UIKit
import SnapKit

open class MainScreen: UIView {
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required public init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension MainScreen: CodeView {
    func buildViewHierarchy() {
        
    }
    
    func setupConstraints() {
        
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = hexStringToUIColor(hex: "#F5F5F5")
    }
}
