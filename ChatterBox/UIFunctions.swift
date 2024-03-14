//
//  UIFunctions.swift
//  ChatterBox
//
//  Created by Владислав Головачев on 14.03.2024.
//

import UIKit

func setShadow(to view: UIView, shadowOpacity: ShadowConstants.ShadowOpacity) {
    
    view.layer.shadowColor = ShadowConstants.shadowColor
    view.layer.shadowOffset = ShadowConstants.shadowOffset
    view.layer.shadowOpacity = shadowOpacity.rawValue
}
