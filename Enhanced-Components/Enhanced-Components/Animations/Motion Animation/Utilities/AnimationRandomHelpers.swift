//
//  AnimationRandomHelpers.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/9/23.

import SwiftUI

// AnimationRandomHelpers: A utility struct for generating random numbers used in animations.
struct AnimationRandomHelpers {
    // Generate a random coordinate within the given maximum value.
    static func randomCoordinate(max: CGFloat) -> CGFloat {
        return CGFloat.random(in: 0...max)
    }

    // Generate a random size for visual elements.
    static func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 10...300))
    }

    // Generate a random scale factor for visual animations.
    static func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }

    // Generate a random animation speed.
    static func randomSpeed() -> Double {
        return Double.random(in: 0.025...1.0)
    }

    // Generate a random delay for animation timing.
    static func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    // Generates a random opacity value within the range of 0.1 to 1.0.
    static func randomOpacity() -> Double {
        return Double.random(in: 0.1...1.0)
    }
}
