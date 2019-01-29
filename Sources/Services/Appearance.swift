//
//  Appearance.swift
//  GetStreamActivityFeed
//
//  Created by Alexey Bukhtin on 17/01/2019.
//  Copyright © 2019 Stream.io Inc. All rights reserved.
//

import UIKit

struct Appearance {
    
    struct Color {
        static let gray = UIColor(red: 0.21, green: 0.25, blue: 0.28, alpha: 1)
        static let lightGray = UIColor(red: 0.77, green: 0.85, blue: 0.9, alpha: 1)
        static let transparentWhite = UIColor(white: 1, alpha: 0.7)
        static let transparentBlue = UIColor(red: 0, green: 0.48, blue: 1, alpha: 0.7)
        static let transparentBlue2 = UIColor(red: 0, green: 0.48, blue: 1, alpha: 0.15)
        static let transparentYellow2 = UIColor(red: 0.48, green: 1, blue: 0.48, alpha: 0.15)
    }
    
    static func setup() {
        let appearance = UINavigationBar.appearance()
        appearance.titleTextAttributes = [.font: UIFont.systemFont(ofSize: 13, weight: .medium), .kern: 1]
    }
}
