//
//  MapAnnotationView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/14/23.

import SwiftUI

struct MapAnnotationView: View {
    
    // MARK: - Properties
    var locationsLondon: LocationsLondon  // The location data for the annotation
    @State private var animation: Double = 0.0  // State variable for animation
    
    // MARK: - Body
    var body: some View {
        ZStack {
            // Outer circle with animation
            Circle()
                .fill(Color.blue)  // Circle fill color
                .frame(width: 34, height: 34, alignment: .center)
            
            // Inner circle with animation
            Circle()
                .stroke(Color.blue, lineWidth: 2)  // Circle stroke color and width
                .frame(width: 32, height: 32, alignment: .center)
                .scaleEffect(1 + CGFloat(animation))
                .opacity(1 - animation)
            
            // Image for the annotation
            Image(locationsLondon.image)
                .resizable()
                .scaledToFit()
                .frame(width: 28, height: 28, alignment: .center)
                .clipShape(Circle())  // Clip the image to a circular shape
        } //: ZStack
        .onAppear {
            withAnimation(
                Animation.easeOut(duration: 2).repeatForever(autoreverses: false)) {
                    animation = 1  // Start the animation
                }
        }
    }
}

// MARK: - Preview
struct MapAnnotationView_Previews: PreviewProvider {
    static var locationsLondon: [LocationsLondon] = Bundle.main.decode("locationsLondon.json")
    static var previews: some View {
        MapAnnotationView(locationsLondon: locationsLondon[0])
    }
}

