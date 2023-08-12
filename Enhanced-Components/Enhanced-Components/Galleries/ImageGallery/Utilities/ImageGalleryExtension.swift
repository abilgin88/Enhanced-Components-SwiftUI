//
//  ImageGalleryExtension.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/12/23.

import SwiftUI

extension ImageGalleryView {
    // Switch the grid layout of the image gallery based on the specified number of columns.
    func gridSwitch(gridColumn: Double) {
        // Create an array of GridLayoutItem instances, each with a flexible size.
        gridLayout = Array(repeating: .init(.flexible()), count: Int(gridColumn))
    }
    
    // Select a random image from the plants collection and set it as the selectedPlant.
    func randomizeImage() {
        // Check if there's a random element in the plants collection.
        if let randomPlant = plants.randomElement() {
            // Assign the image of the randomly selected plant to the selectedPlant property.
            selectedPlant = randomPlant.image
        }
    }
}
