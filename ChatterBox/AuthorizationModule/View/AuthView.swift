//
//  AuthView.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 14.03.2024.
//

import UIKit

final class AuthView: UIView {
    
    //MARK: Views
    let authLabel: UILabel = {
        
        let label = UILabel(text: "Sign in", textAlignment: .center)
        
        label.font = UIFont(name: FontConstants.FontName.normal.rawValue,
                            size: FontConstants.FontSize.title.rawValue)
        
        setShadow(to: label, shadowOpacity: .label)
        
        return label
    }()
    
    let instructionLabel: UILabel = {
        
        let label = UILabel(text: "Use your account")
        
        label.font = UIFont(name: FontConstants.FontName.normal.rawValue,
                            size: FontConstants.FontSize.normal.rawValue)
        
        setShadow(to: label, shadowOpacity: .label)
        
        return label
    }()
    
    var loginField: UITextField = {
        
        var textField = UITextField(placeholder: "Login")
        
        textField.font = UIFont(name: FontConstants.FontName.normal.rawValue,
                                size: FontConstants.FontSize.normal.rawValue)
        
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .whileEditing
        textField.disableCorrection()
        
        return textField
    }()
    
    var passwordField: UITextField = {
        
        var textField = UITextField(placeholder: "Password")
        
        textField.font = UIFont(name: FontConstants.FontName.normal.rawValue,
                                size: FontConstants.FontSize.normal.rawValue)
        
        textField.borderStyle = .roundedRect
        textField.clearButtonMode = .whileEditing
        textField.disableCorrection()
        
        textField.isSecureTextEntry = true
        
        return textField
    }()
    
    let createAccountButton: UIButton = {
        
        let button = UIButton(title: "Create account", titleColor: .systemBlue)
        
        button.titleLabel?.font = UIFont(name: FontConstants.FontName.normal.rawValue, size: 14)
        
        button.contentHorizontalAlignment = .leading
//        button.addTarget(<#T##target: Any?##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        
        return button
    }()
    
    let signInButton: UIButton = {
        
        let button = UIButton(title: "Sign in", titleColor: .white)
        
        button.titleLabel?.font =  UIFont(name: FontConstants.FontName.bold.rawValue,
                                          size: FontConstants.FontSize.normal.rawValue)
        
        button.backgroundColor = .systemGreen
        button.layer.cornerRadius = 7
        setShadow(to: button, shadowOpacity: .button)
        
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
    
    private func setupViews() {
        self.addSubview(authLabel)
        self.addSubview(instructionLabel)
        self.addSubview(loginField)
        self.addSubview(passwordField)
        self.addSubview(createAccountButton)
        self.addSubview(signInButton)
    }
    
    private func setupConstraints() {
        setupAuthLabelConstraints()
        setupInstructionLabelConstraints()
        setupLoginFieldConstraints()
        setupPasswordFieldConstraints()
        setupCreateAccountButtonConstraints()
        setupSignInButtonConstraints()
    }
    
    private func setupAuthLabelConstraints() {

        authLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 15),
            authLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            authLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor)
        ])
    }
    
    private func setupInstructionLabelConstraints() {
        print(instructionLabel.font.pointSize)
        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            instructionLabel.topAnchor.constraint(equalTo: authLabel.bottomAnchor, constant: 30),
            instructionLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            instructionLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    //FIXME: Delete
    private func setupLoginFieldConstraints() {
        
        loginField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginField.topAnchor.constraint(equalTo: instructionLabel.bottomAnchor, constant: 20),
            loginField.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            loginField.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
    private func setupPasswordFieldConstraints() {
        
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: loginField.bottomAnchor, constant: 20),
            passwordField.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            passwordField.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
    private func setupCreateAccountButtonConstraints() {
        
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            createAccountButton.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 15),
            createAccountButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            createAccountButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3),
            createAccountButton.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setupSignInButtonConstraints() {
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: createAccountButton.bottomAnchor, constant: 30),
            signInButton.centerXAnchor.constraint(equalTo: authLabel.centerXAnchor),
            signInButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3)
        ])
    }
}
