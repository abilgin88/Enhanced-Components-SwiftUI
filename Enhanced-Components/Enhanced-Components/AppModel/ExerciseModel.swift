//
//  ExerciseModel.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/15/23.

import SwiftUI

// Defining a struct named Exercise that conforms to the Codable and Identifiable protocols
struct Exercise: Codable, Identifiable {
    
    // Properties of the Exercise struct
    let id: Int // Unique identifier for the exercise
    let name: String // Name of the exercise
    let category: String // Category to which the exercise belongs
    let description: String // Description of the exercise
    let video: String // URL or identifier for the exercise video
    
    // Computed property to generate a thumbnail name based on the exercise name
    var thumbnail: String {
        "video-\(name)" // The thumbnail name is constructed as "video-exercisename"
    }
}
