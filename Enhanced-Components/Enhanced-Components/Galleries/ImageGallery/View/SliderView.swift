//
//  SliderView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/12/23.

import SwiftUI

struct SliderView: View {
    // MARK: - Properties
    
    // Binding to a value that represents the number of grid columns.
    @Binding var gridColumn: Double
    
    // MARK: - Body
    var body: some View {
        // A slider that allows adjusting the gridColumn value.
        Slider(value: $gridColumn, in: 2...4, step: 1)
            .padding(.horizontal) // Add horizontal padding to the slider.
    }
}

// MARK: - Preview
struct SliderView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the SliderView with a specific gridColumn value.
        SliderView(gridColumn: .constant(3.0))
    }
}

