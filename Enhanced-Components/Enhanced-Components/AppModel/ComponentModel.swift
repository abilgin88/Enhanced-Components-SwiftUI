//
//  ComponentModel.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/13/23.
//

import SwiftUI

struct Components: Codable, Identifiable {
    let id: String
    let name: String
    let image: String
    let type: String
    let description: String
}
