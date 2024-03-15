//
//  AuthView.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 14.03.2024.
//

import UIKit

final class AuthView: UIView {
    
    //MARK: Variables
    var createAccountVCBlock: ((UIButton) -> ())?
    var signInVCBlock: ((UIButton) -> ())?
    
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
    
    var infoLabel: UILabel = {
        
        let label = UILabel(text: "")
        
        label.font = UIFont(name: FontConstants.FontName.normal.rawValue, size: 14)
        label.textColor = .systemRed
        
        return label
    }()
    
    let createAccountButton: UIButton = {
        
        let button = UIButton(title: "Create account", titleColor: .systemBlue)
        
        button.titleLabel?.font = UIFont(name: FontConstants.FontName.normal.rawValue, size: 14)
        
        button.contentHorizontalAlignment = .leading
        
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
        
        createAccountButton.addTarget(self, action: #selector(createAccountAction(_:)), for: .touchUpInside)
        signInButton.addTarget(self, action: #selector(signInAction(_:)), for: .touchUpInside)
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    @objc func createAccountAction(_ sender: UIButton) {
        createAccountVCBlock?(sender)
    }
    
    @objc func signInAction(_ sender: UIButton) {
        signInVCBlock?(sender)
    }
}

//MARK: Adding Subviews and setup of constraints
extension AuthView {
    
    private func setupViews() {
        self.addSubview(authLabel)
        self.addSubview(instructionLabel)
        self.addSubview(loginField)
        self.addSubview(passwordField)
        self.addSubview(infoLabel)
        self.addSubview(createAccountButton)
        self.addSubview(signInButton)
    }
    
    private func setupConstraints() {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupAuthLabelConstraints()
        setupInstructionLabelConstraints()
        setupLoginFieldConstraints()
        setupPasswordFieldConstraints()
        setupInfoLabelConstraints()
        setupCreateAccountButtonConstraints()
        setupSignInButtonConstraints()
    }
    
    private func setupAuthLabelConstraints() {

        authLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authLabel.bottomAnchor.constraint(equalTo: instructionLabel.topAnchor, constant: -35),
            authLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor),
            authLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor)
        ])
    }
    
    private func setupInstructionLabelConstraints() {

        instructionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            instructionLabel.bottomAnchor.constraint(equalTo: loginField.topAnchor, constant: -35),
            instructionLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            instructionLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
    private func setupLoginFieldConstraints() {
        
        loginField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            loginField.bottomAnchor.constraint(equalTo: self.centerYAnchor, constant: -12.5),
            loginField.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            loginField.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
    private func setupPasswordFieldConstraints() {
        
        passwordField.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            passwordField.topAnchor.constraint(equalTo: self.centerYAnchor, constant: 12.5),
            passwordField.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            passwordField.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
    private func setupInfoLabelConstraints() {
        
        infoLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            infoLabel.topAnchor.constraint(equalTo: passwordField.bottomAnchor, constant: 15),
            infoLabel.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            infoLabel.rightAnchor.constraint(equalTo: self.safeAreaLayoutGuide.rightAnchor, constant: -10)
        ])
    }
    
    private func setupCreateAccountButtonConstraints() {
        
        createAccountButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            createAccountButton.topAnchor.constraint(equalTo: infoLabel.bottomAnchor, constant: 20),
            createAccountButton.leftAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leftAnchor, constant: 10),
            createAccountButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3),
            createAccountButton.heightAnchor.constraint(equalToConstant: 20)
        ])
    }
    
    private func setupSignInButtonConstraints() {
        
        signInButton.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            signInButton.topAnchor.constraint(equalTo: createAccountButton.bottomAnchor, constant: 25),
            signInButton.centerXAnchor.constraint(equalTo: authLabel.centerXAnchor),
            signInButton.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.3)
        ])
    }
}
