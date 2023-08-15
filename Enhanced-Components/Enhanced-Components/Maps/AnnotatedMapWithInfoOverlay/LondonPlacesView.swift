//
//  LondonPlacesView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/14/23.

import SwiftUI
import MapKit

struct LondonPlacesView: View {
    
    // MARK: - Properties
    // Load the locations data from JSON file
    let locationsLondon: [LocationsLondon] = Bundle.main.decode("locationsLondon.json")
    
    // Manage the current region of the map
    @State private var region: MKCoordinateRegion = MapRegionProvider.initialRegion()

    // MARK: - Body
    var body: some View {
        // Display the map with annotations for each location
        Map(coordinateRegion: $region, annotationItems: locationsLondon, annotationContent: { item in
            MapAnnotation(coordinate: item.location) {
                MapAnnotationView(locationsLondon: item)
                Text("\(item.name)")
            }
        })
        // Overlay additional information view on top of the map
        .overlay(
            LocationInfoView(region: region)
                .padding()
            , alignment: .top
        )
    }
}

// MARK: - Preview
struct LondonPlacesView_Previews: PreviewProvider {
    static var previews: some View {
        LondonPlacesView()
    }
}

