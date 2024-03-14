//
//  Extensions.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 14.03.2024.
//

import UIKit

private let fontName = "HelveticaNeue"

extension UITextField {
    
    convenience init(placeholder: String, fontName: String = fontName,
                     fontSize: CGFloat = 18) {
        self.init()
        
        self.placeholder = placeholder
        self.font = UIFont(name: fontName, size: fontSize)
        
        self.autocapitalizationType = .none
        self.autocorrectionType = .no
        self.clearButtonMode = .whileEditing
        self.borderStyle = .roundedRect
    }
}

extension UILabel {
    
    convenience init(text: String, textAlignment: NSTextAlignment = .left,
                     fontName: String = fontName, fontSize: CGFloat = 18) {
        self.init()
        self.text = text
        self.textAlignment = textAlignment
        self.font = UIFont(name: fontName, size: fontSize)
    }
}

extension UIButton {
    
    convenience init(title: String, titleColor: UIColor,
                     fontName: String = fontName, fontSize: CGFloat = 14) {
        
        self.init(type: .custom)
        self.setTitle(title, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = UIFont(name: fontName, size: fontSize)
    }
}
