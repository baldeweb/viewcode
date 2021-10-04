//
//  CodeView.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 29/09/21.
//

import Foundation
import SnapKit

protocol CodeView {
    func createViewComponents()
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension CodeView {
    func setupView() {
        createViewComponents()
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
