//
//  sfIconModel.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

// Define a struct named SFSymbol that conforms to the Codable and Identifiable protocols
struct SFSymbol: Codable, Identifiable {
    
    // Properties of the SFSymbol struct
    let id: String // Unique identifier for the SF symbol
    let name: String // Name of the SF symbol
    let category: String // Category to which the SF symbol belongs
    let icon: String // SF symbol string
    
    // Computed property to generate a thumbnail name based on the SF symbol name
    var thumbnail: String {
        "icon-\(name)" // The thumbnail name is constructed as "icon-symbolname"
    }
}
