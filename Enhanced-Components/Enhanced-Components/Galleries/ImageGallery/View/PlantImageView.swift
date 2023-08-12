//
//  PlantImageView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/12/23.

import SwiftUI

struct PlantImageView: View {
    // MARK: - Properties
    
    // The name of the image to display.
    var imageName: String
    
    // The width of the stroke line around the image.
    var lineWidth: CGFloat
    
    // The color of the stroke line around the image.
    var strokeColor: Color
    
    // MARK: - Body
    var body: some View {
        // Display the image with the provided name.
        Image(imageName)
            .resizable()
            .scaledToFit()
            .clipShape(Circle()) // Clip the image in a circular shape.
            .overlay(
                // Add a circular stroke around the image.
                Circle()
                    .stroke(strokeColor, lineWidth: lineWidth)
            )
    }
}

// MARK: - Preview
struct PlantImageView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the PlantImageView with specific parameters.
        PlantImageView(imageName: "rose", lineWidth: 5.0, strokeColor: .blue)
    }
}

