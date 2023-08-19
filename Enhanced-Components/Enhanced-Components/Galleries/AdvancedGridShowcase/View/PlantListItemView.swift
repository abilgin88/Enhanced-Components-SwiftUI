//
//  PlantListItemView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/18/23.

import SwiftUI

struct PlantListItemView: View {
    // A single plant data to display
    var plant: Plant
    
    var body: some View {
        // Horizontal stack to layout the plant information
        HStack(alignment: .center, spacing: 6) {
            // Display the plant's image
            Image(plant.image)
                .resizable()
                .scaledToFill()
                .frame(width: 90, height: 90)
                .clipShape(
                    RoundedRectangle(cornerRadius: 12)
                )
            
            // Vertical stack to arrange plant details
            VStack(alignment: .leading, spacing: 8) {
                // Display the plant's name
                Text(plant.name)
                    .font(.title2)
                    .fontWeight(.heavy)
                    .foregroundColor(.motionForeground)
                
                // Display a brief description of the plant
                Text(plant.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
            } //: VStack
        } //: HStack
    }
}

struct PlantListItemView_Previews: PreviewProvider {
    // Load plant data from "plants.json" using the custom decode function
    static var plants: [Plant] = Bundle.main.decode("plants.json")
    
    static var previews: some View {
        // Preview a PlantListItemView with the first plant from the loaded data
        PlantListItemView(plant: plants[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

