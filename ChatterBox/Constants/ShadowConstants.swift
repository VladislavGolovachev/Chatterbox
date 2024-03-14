//
//  ShadowConstants.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 14.03.2024.
//

import UIKit

struct ShadowConstants {
    
    enum ShadowOpacity: Float {
        case button = 1.0
        case label = 0.4
    }
    static let shadowColor = CGColor(red: 0, green: 0, blue: 0, alpha: 0.4)
    static let shadowOffset = CGSize(width: 0, height: 2)
}
