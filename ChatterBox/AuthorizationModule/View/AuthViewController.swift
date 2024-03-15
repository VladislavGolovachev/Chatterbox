//
//  AuthViewController.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 13.03.2024.
//

import UIKit

final class AuthViewController: UIViewController {
    
    var authView = AuthView()
    var presenter: AuthPresenterProtocol?
    
    //MARK: View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = .white
        
        self.view.addSubview(authView)
        setupAuthViewConstraints()
        
        self.authView.createAccountVCBlock = { [weak self] sender in
            self?.createAccountAction(sender)
        }
        self.authView.signInVCBlock = { [weak self] sender in
            self?.signInAction(sender)
        }
    }
    
    func createAccountAction(_ sender: UIButton) {
        presenter?.createAccount()
    }
    
    func signInAction(_ sender: UIButton) {
        presenter?.signIn()
    }
}

extension AuthViewController {
    
    func setupAuthViewConstraints() {
        
        authView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            authView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            authView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            authView.widthAnchor.constraint(equalTo: self.view.widthAnchor),
            authView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
        ])
    }
}

extension AuthViewController: AuthPresenterViewProtocol {
    //FIXME: Complete AuthPresenterViewProtocol
    func signInFailure() {
        
    }
}
