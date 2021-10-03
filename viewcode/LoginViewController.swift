//
//  LoginViewController.swift
//  viewcode
//
//  Created by Wallace Baldenebre on 02/10/21.
//

import UIKit
import SnapKit

final class LoginViewController: UIViewController {
    
    private lazy var loginLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.cornerRadius = 20
        return view
    }()
    
    private lazy var passwordLabel: UILabel = {
        let view = UILabel(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var loginTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var passwordTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var loginButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureUI()
    }
    
    private func configureUI() {
        view.backgroundColor = .white
        
        createLoginLabel()
        createPasswordLabel()
        createLoginTextField()
        createPasswordTextField()
        includeSubviews()
        alignItems()
    }
    
    private func createLoginLabel() {
        loginLabel.text = "Usuário"
        loginLabel.textAlignment = .center
        loginLabel.backgroundColor = .orange
        loginLabel.textColor = .white
        loginLabel.layer.cornerRadius = 10
        loginLabel.layer.masksToBounds = true // por ser uma label, para mudar sua forma é preciso colocar essa linha de código para aparecer na tela do jeito que eu quero
    }
    
    private func createPasswordLabel() {
        passwordLabel.text = "Senha"
        passwordLabel.textAlignment = .center
        passwordLabel.backgroundColor = .blue
        passwordLabel.textColor = .white
        passwordLabel.layer.cornerRadius = 10
        passwordLabel.layer.masksToBounds = true
    }
    
    private func createLoginTextField() {
        loginTextField.backgroundColor = .green
        loginTextField.textColor = .white
        loginTextField.placeholder = "Digite o usuário..."
        loginTextField.textAlignment = .center
        loginTextField.autocapitalizationType = .none
        loginTextField.layer.cornerRadius = 10
    }
    
    private func createPasswordTextField() {
        passwordTextField.backgroundColor = .red
        passwordTextField.textColor = .white
        passwordTextField.placeholder = "Digite a senha..."
        passwordTextField.textAlignment = .center
        passwordTextField.autocapitalizationType = .none
        passwordTextField.layer.cornerRadius = 10
    }
    
    private func createLoginButton() {
        loginButton.setTitle("Acessar", for: .normal)
        loginButton.backgroundColor = .red
        loginButton.addTarget(self, action: #selector(login), for: .touchDown)
    }
    
    private func includeSubviews() {
        view.addSubview(loginLabel)
        view.addSubview(loginTextField)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(loginButton)
    }
    
    private func alignItems() {
        loginLabel.snp.makeConstraints { make in
            make.width.equalTo(100)
            make.height.equalTo(40)
            make.top.equalToSuperview().offset(50)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().inset(25)
        }
        
        loginTextField.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(40)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().inset(25)
            make.bottom.equalTo(loginLabel)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(40)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().inset(25)
            make.bottom.equalTo(loginTextField)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(40)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().inset(25)
            make.bottom.equalTo(passwordLabel)
        }
        
        loginButton.snp.makeConstraints { make in
            make.width.equalToSuperview()
            make.height.equalTo(40)
            make.left.equalToSuperview().offset(25)
            make.right.equalToSuperview().inset(25)
            make.bottom.equalToSuperview().inset(15)
            //make.bottom.equalTo(passwordTextField)
        }
    }
    
    @objc func login() {
        
    }
}


