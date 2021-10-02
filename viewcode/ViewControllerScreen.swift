//
//  ViewControllerScreen.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 29/09/21.
//

import Foundation
import UIKit
import SnapKit

final class ViewControllerScreen: UIView {
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Enviar", for: .normal)
        view.backgroundColor = .green
        return view
    }()
    
    private lazy var gridContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.spacing = 8.0
        view.backgroundColor = .gray
        return view
    }()
    
    lazy var leftBox = GridBoxView()
    lazy var rightBox = GridBoxView()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ViewControllerScreen: CodeView {
    func buildViewHierarchy() {
        addSubview(button)
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
    }
    
    func setupConstraints() {
        gridContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(320)
            make.centerY.equalToSuperview()
        }
        
        button.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.bottom.equalToSuperview().inset(15)
            make.width.equalToSuperview()
            make.height.equalTo(40)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .lightGray
    }
}
