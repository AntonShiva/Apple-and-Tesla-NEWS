//
//  Size.swift
//  Apple and Tesla NEWS
//
//  Created by Anton Rasen on 15.08.2024.
//

import SwiftUI

// Size for news image with parallax effect
struct Size {
    static var height: CGFloat {
        UIScreen.main.bounds.height / 2
    }
    static var width: CGFloat {
        UIScreen.main.bounds.width
    }
}
