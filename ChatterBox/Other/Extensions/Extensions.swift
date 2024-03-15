//
//  Extensions.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 14.03.2024.
//

import UIKit

extension UITextField {
    
    convenience init(placeholder: String) {
        self.init()
        self.placeholder = placeholder
    }
    
    func disableCorrection() {
        self.autocapitalizationType = .none
        self.autocorrectionType = .no
    }
}

extension UILabel {
    
    convenience init(text: String, textAlignment: NSTextAlignment = .left) {
        self.init()
        
        self.text = text
        self.textAlignment = textAlignment
    }
}

extension UIButton {
    
    convenience init(title: String, titleColor: UIColor) {
        self.init(type: .custom)
        
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
    }
}
