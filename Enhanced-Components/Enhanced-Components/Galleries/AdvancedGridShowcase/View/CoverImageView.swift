//
//  CoverImageView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/18/23.

import SwiftUI

struct CoverImageView: View {
    // MARK: - Preview
    // Load plant data from "plants.json" using the custom decode function
    let plants: [Plant] = Bundle.main.decode("plants.json")
    
    // MARK: - Body
    var body: some View {
        // Create a TabView to display a collection of images
        TabView {
            // Loop through each plant in the "plants" array
            ForEach(plants) { plant in
                // Display an image for the current plant
                Image(plant.image)
                    .resizable()
                    .scaledToFill()
            } //: Loop
        } //: TabView
        // Apply a PageTabViewStyle to the TabView for pagination effect
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK: - Preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        // Provide a preview of the CoverImageView with fixed dimensions
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}

