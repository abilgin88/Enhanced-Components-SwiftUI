//
//  LocationLondonModels.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/14/23.

import Foundation
import MapKit

// Defining a struct to hold information about London locations
struct LocationsLondon: Codable, Identifiable {
    var id: String            // Unique identifier for each location
    var name: String          // Name of the location
    var image: String         // Image name associated with the location (without file extension)
    var latitude: Double      // Latitude coordinate of the location
    var longitude: Double     // Longitude coordinate of the location
    
    // Computed property to create a CLLocationCoordinate2D instance from latitude and longitude
    var location: CLLocationCoordinate2D {
        CLLocationCoordinate2D(latitude: latitude, longitude: longitude)
    }
}
