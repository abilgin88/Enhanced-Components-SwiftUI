//
//  RandomOpacityAndScaleModifier.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/9/23.

import SwiftUI

/// A custom SwiftUI modifier that applies random opacity and scale animation to the content view.
struct RandomOpacityAndScaleModifier: ViewModifier {
    /// State variable to track animation status.
    @Binding var isAnimating: Bool
    
    /// Modifies the content view to apply random opacity and scale animation.
    /// - Parameter content: The content view to be modified.
    /// - Returns: A modified content view with random opacity and scale animation.
    func body(content: Content) -> some View {
        content
            .opacity(isAnimating ? AnimationRandomHelpers.randomOpacity() : 1)
            .scaleEffect(isAnimating ? AnimationRandomHelpers.randomScale() : 1)
    }
}
extension View {
    /// Applies the `RandomOpacityAndScaleModifier` to the view.
    /// - Returns: The view with the `RandomOpacityAndScaleModifier` applied.
    func randomOpacityAndScale() -> some View {
        modifier(RandomOpacityAndScaleModifier(isAnimating: .constant(true)))
    }
}
