//
//  AuthView.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 14.03.2024.
//

import UIKit

final class AuthView: UIView {
    
    let authLabel = UILabel(text: "Sign in", textAlignment: .center, fontSize: 28)
    let instructionLabel = UILabel(text: "Use your account")
    
    var loginField = UITextField(placeholder: "Login")
    var passwordField: UITextField = {
        
        var textField = UITextField(placeholder: "Password")
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    let createAccountButton: UIButton = {
        
        let button = UIButton(title: "Create account", titleColor: .systemBlue)
        button.contentHorizontalAlignment = .leading
//        button.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.backgroundColor = .white
        
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}

//MARK: Adding Subviews and setup of constraints
extension AuthView {
    
    func setupViews() {
        self.addSubview(authLabel)
        self.addSubview(instructionLabel)
        self.addSubview(loginField)
        self.addSubview(passwordField)
        self.addSubview(createAccountButton)
    }
    
    func setupConstraints() {
        setupAuthLabelConstraints()
        setupInstructionLabelConstraints()
        setupLoginFieldConstraints()
        setupPasswordFieldConstraints()
        setupCreateAccountButtonConstraints()
    }
    
    func setupAuthLabelConstraints() {
        
        authLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            authLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            authLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor)
        ])
    }
    
    func setupInstructionLabelConstraints() {
        
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            instructionLabel.topAnchor.constraint(equalTo: authLabel.bottomAnchor, constant: 30),
            instructionLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            instructionLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
    func setupLoginFieldConstraints() {
        
        loginField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 15),
            loginField.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            loginField.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
    func setupPasswordFieldConstraints() {
        
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 15),
            passwordField.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            passwordField.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
    func setupCreateAccountButtonConstraints() {
        
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            createAccountButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 15),
            createAccountButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            createAccountButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3),
            createAccountButton.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
}
