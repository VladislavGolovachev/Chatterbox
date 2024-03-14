//
//  AuthViewController.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 13.03.2024.
//

import UIKit

final class AuthViewController: UIViewController {
    
    private var authView: AuthView? {return self.view as? AuthView}
    
    //MARK: View Controller Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func loadView() {
        self.view = AuthView(frame: UIScreen.main.bounds)
    }
}
