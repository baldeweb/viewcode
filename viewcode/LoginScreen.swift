//
//  LoginScreen.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 03/10/21.
//


import Foundation
import UIKit
import SnapKit

final class LoginScreen: UIView {

    private lazy var contentView: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .equalSpacing
        view.spacing = 8.0
        view.backgroundColor = hexStringToUIColor(hex: "#7E57C2")
        return view
    }()
    
    lazy var usernameTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.keyboardType = .alphabet
        view.textColor = .black
        view.attributedPlaceholder = NSAttributedString(
            string: "Username",
            attributes: [NSAttributedString.Key.foregroundColor: hexStringToUIColor(hex: "#9E9E9E")]
        )
        view.backgroundColor = hexStringToUIColor(hex: "#EDE7F6")
        return view
    }()
    
    lazy var passwordTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.textContentType = .password
        view.keyboardType = .numberPad
        view.textColor = .black
        view.attributedPlaceholder = NSAttributedString(
            string: "Password",
            attributes: [NSAttributedString.Key.foregroundColor: hexStringToUIColor(hex: "#9E9E9E")]
        )
        view.backgroundColor = hexStringToUIColor(hex: "#EDE7F6")
        return view
    }()
    
    lazy var button: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Enviar", for: .normal)
        view.setTitleColor(.white, for: .normal)
        view.backgroundColor = hexStringToUIColor(hex: "#311B92")
        return view
    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginScreen: CodeView {
    func buildViewHierarchy() {
        contentView.addArrangedSubview(usernameTextField)
        contentView.addArrangedSubview(passwordTextField)
        contentView.addArrangedSubview(button)
        addSubview(contentView)
    }
    
    func setupConstraints() {
        contentView.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(250)
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview()
        }
        
        usernameTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(60)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(60)
        }

        button.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().inset(15)
            make.height.equalTo(70)
        }
    }
    
    func setupAdditionalConfiguration() {
        backgroundColor = hexStringToUIColor(hex: "#F5F5F5")
    }
}

