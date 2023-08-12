//
//  CodableBundleExtension.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/12/23.

import Foundation

// Extend the Bundle class
extension Bundle {
    
    // A generic method to decode JSON data from a file
    func decode<T: Codable>(_ file: String) -> T {
        // 1. Locate the JSON file in the bundle
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in the bundle")
        }
        
        // 2. Read data from the URL
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        // 3. Create a JSON decoder
        let decoder = JSONDecoder()
        
        // 4. Decode the data into a specified type (T)
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        
        // 5. Return the decoded data
        return loaded
    }
}
