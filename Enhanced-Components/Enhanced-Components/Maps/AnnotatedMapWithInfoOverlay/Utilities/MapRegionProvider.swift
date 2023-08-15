//
//  MapRegionProvider.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/15/23.

import Foundation
import MapKit

// This struct provides the initial MKCoordinateRegion for the map.
struct MapRegionProvider {
    static func initialRegion() -> MKCoordinateRegion {
        // Define the initial map center coordinates (latitude and longitude).
        let mapCoordinates = CLLocationCoordinate2D(
            latitude: 51.5074,      // Latitude of the center point
            longitude: -0.1278     // Longitude of the center point
        )
        
        // Define the initial map zoom level using latitude and longitude deltas.
        let mapZoomLevel = MKCoordinateSpan(
            latitudeDelta: 0.09,    // Latitude span
            longitudeDelta: 0.09    // Longitude span
        )
        
        // Create an MKCoordinateRegion using the center and zoom level.
        let mapRegion = MKCoordinateRegion(
            center: mapCoordinates,
            span: mapZoomLevel
        )
        
        // Return the calculated initial map region.
        return mapRegion
    }
}
