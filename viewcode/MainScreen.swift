//
//  ViewControllerScreen.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 29/09/21.
//

import Foundation
import UIKit
import SnapKit

final class MainScreen: UIView {
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Enviar", for: .normal)
        view.backgroundColor = .purple
        view.setTitleColor(.white, for: .normal)
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

extension MainScreen: CodeView {
    func buildViewHierarchy() {
        gridContainer.addArrangedSubview(leftBox)
        gridContainer.addArrangedSubview(rightBox)
        addSubview(gridContainer)
        addSubview(button)
    }
    
    func setupConstraints() {
        gridContainer.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(200)
            make.centerX.equalToSuperview()
        }
        
        button.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.bottom.equalToSuperview().inset(30)
            make.height.equalTo(50)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = .lightGray
    }
}
