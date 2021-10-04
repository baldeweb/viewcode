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
    
    private var usernameTextField: UITextField!
    private var passwordTextField: UITextField!
    private var button: UIButton!
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func buttonAction(sender: UIButton!) {
        print("LOG >> CLICOU")
    }
}

extension LoginScreen: CodeView {
    func createViewComponents() {
        button = Button(frame: .zero).DefaultButton(self,
                                                    title: "Enviar",
                                                    selector: #selector(buttonAction)
        )
        usernameTextField = TextField(frame: .zero).DefaultField(self,
                                                                 placeholder: "Usuário",
                                                                 keyboardType: nil,
                                                                 textColor: nil
        )
        passwordTextField = TextField(frame: .zero).DefaultField(self,
                                                                 placeholder: "Senha",
                                                                 keyboardType: .numberPad,
                                                                 textColor: nil
        )
    }
    
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

