//
//  PlantGridItemView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/18/23.

import SwiftUI

struct PlantGridItemView: View {
    // MARK: - Preview
    // Plant data for the item
    let plant: Plant
    
    // MARK: - Body
    var body: some View {
        // Display the plant's image
        Image(plant.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(12)
    }
}

// MARK: - Preview
struct PlantGridItemView_Previews: PreviewProvider {
    // Load plant data from "plants.json" using the custom decode function
    static var plants: [Plant] = Bundle.main.decode("plants.json")
    
    static var previews: some View {
        // Preview a PlantGridItemView with a specific plant from the loaded data
        PlantGridItemView(plant: plants[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

