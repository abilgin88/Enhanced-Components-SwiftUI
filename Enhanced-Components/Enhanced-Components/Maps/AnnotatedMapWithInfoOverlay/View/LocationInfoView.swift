//
//  LocationInfoView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/14/23.

import SwiftUI
import MapKit

struct LocationInfoView: View {
    
    // MARK: - Properties
    
    var region: MKCoordinateRegion  // The region to display information for
    
    // MARK: -  Body
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(systemName: "compass.drawing")
                .resizable()
                .scaledToFit()
                .frame(width: 48, height: 48, alignment: .center)
                .foregroundColor(Color.WarningColor)  // Set the image color
            
            VStack(alignment: .leading, spacing: 3) {
                HStack {
                    Text("Latitude:")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.WarningColor)  // Set the text color
                    
                    Spacer()
                    
                    Text("\(region.center.latitude)")
                        .font(.footnote)
                        .foregroundColor(.white)  // Set the text color
                    
                }
                
                Divider()
                
                HStack {
                    Text("Longitude:")
                        .font(.footnote)
                        .fontWeight(.bold)
                        .foregroundColor(.WarningColor)  // Set the text color
                    
                    Spacer()
                    
                    Text("\(region.center.longitude)")
                        .font(.footnote)
                        .foregroundColor(.white)  // Set the text color
                    
                } //: HStack
            } //: VStack
        } //: HStack
        .padding(.vertical, 12)
        .padding(.horizontal, 16)
        .background(
            Color.black
                .cornerRadius(8)
                .opacity(0.6)
        )  // Apply background styling
    }
}

// MARK: - Preview
struct LocationInfoView_Previews: PreviewProvider {
    static var region: MKCoordinateRegion = MapRegionProvider.initialRegion()  // Create a preview region
    static var previews: some View {
        LocationInfoView(region: region)
            .padding()
    }
}

