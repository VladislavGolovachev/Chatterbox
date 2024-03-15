//
//  AuthPresenter.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 14.03.2024.
//

import Foundation

protocol AuthPresenterViewProtocol: AnyObject {
    func signInFailure()
}

protocol AuthPresenterProtocol: AnyObject {
    init(view: AuthPresenterViewProtocol)
    func createAccount()
    func signIn()
}

class AuthPresenter: AuthPresenterProtocol {
    
    weak var view: AuthPresenterViewProtocol?
    
    required init(view: AuthPresenterViewProtocol) {
        self.view = view
    }
    
    func createAccount() {
        //popover
    }
    
    func signIn() {
        //check the data
        
    }
}
