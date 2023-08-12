//
//  PlantModel.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/12/23.

import SwiftUI

struct Plant: Codable, Identifiable {
    // MARK: - Properties
    
    // Identifier for the plant.
    let id: String
    
    // Name of the plant.
    let name: String
    
    // Image name associated with the plant.
    let image: String
    
    // Description of the plant.
    let description: String
}
