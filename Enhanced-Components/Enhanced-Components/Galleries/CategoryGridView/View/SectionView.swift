//
//  SectionView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct SectionView: View {
    // MARK: - Properties
    
    @State var rotateClockwise: Bool
    
    var body: some View {
        
        // MARK: - Vertical Stack for Section
        VStack(spacing: 0) {
            Spacer()
            
            // MARK: - Section Title
            Text("Categories".uppercased())
                .font(.footnote)
                .fontWeight(.bold)
                .foregroundColor(.white)
                .rotationEffect(Angle(degrees: rotateClockwise ? 90 : -90))
            
            Spacer()
        } // End of VStack
        .background(Color.gray.cornerRadius(12))
        .frame(width: 85)
        
        
    }
}

struct SectionView_Previews: PreviewProvider {
    static var previews: some View {
        // MARK: - SectionView Preview
        SectionView(rotateClockwise: false)
            .previewLayout(.fixed(width: 120, height: 240))
            .padding()
            .background(Color.BackgroundColor)    }
}
