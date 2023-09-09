//
//  Constant.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

// MARK: - Data
let exercises: [Exercise] = Bundle.main.decode("exercises.json")
let sficons: [SFSymbol] = Bundle.main.decode("sfIcons.json")

// MARK: - Colors


// MARK: - Layout
let colomnSpacing: CGFloat = 10
let rowSpacing: CGFloat = 10
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

// MARK: - UX

// MARK: - API

// MARK: - Images

// MARK: - Fonts

// MARK: - Strings

// MARK: - Miscellaneous

