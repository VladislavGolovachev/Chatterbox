//
//  AuthViewController.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 13.03.2024.
//

import UIKit

final class AuthViewController: UIViewController {
    
    private var authView: AuthView? {return self.view as? AuthView}
    var presenter: AuthPresenterProtocol?
    
    //MARK: View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.authView?.createAccountVCBlock = { [weak self] sender in
            self?.createAccountAction(sender)
        }
        self.authView?.signInVCBlock = { [weak self] sender in
            self?.signInAction(sender)
        }
    }
    
    override func loadView() {
        self.view = AuthView(frame: UIScreen.main.bounds)
    }
    
    func createAccountAction(_ sender: UIButton) {
        presenter?.createAccount()
    }
    
    func signInAction(_ sender: UIButton) {
        presenter?.signIn()
    }
}

extension AuthViewController: AuthPresenterViewProtocol {
    //FIXME: Complete AuthPresenterViewProtocol
    func signInFailure() {
        
    }
}
