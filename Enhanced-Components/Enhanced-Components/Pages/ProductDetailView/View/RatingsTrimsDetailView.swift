//
//  RatingsSizesDetailView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 11/6/23.
//

import SwiftUI

struct RatingsTrimsDetailView: View {
    // Mark: - Properties
    let trim_levels: [String] = ["E", "SE", "L", "S", "P"]
    
    // Mark: - Body
    var body: some View {
        HStack(alignment: .top, spacing: 3, content: {
            // Rating
            VStack(alignment: .leading, spacing: 3, content: {
                Text("Rating")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.gray)
                
                HStack(alignment: .center, spacing: 3, content: {
                    ForEach(1...5, id: \.self) { item in
                        Button(action: {}, label: {
                            Image(systemName: "star.fill")
                        })
                        .frame(width: 28, height: 28, alignment: .center)
                        .background(Color.gray.cornerRadius(5))
                        .foregroundColor(.white)
                    } // End of Loop
                }) // End of HStack Button
            }) // End of VStack Rating
            
            Spacer()
            
            // Trims
            VStack(alignment: .trailing, spacing: 3, content: {
                Text("Trims")
                    .font(.footnote)
                    .fontWeight(.semibold)
                    .foregroundStyle(Color.gray)
                
                HStack(alignment: .center, spacing: 5, content: {
                    ForEach(trim_levels, id: \.self) { trim in
                        Button(action: {}, label: {
                            Text(trim)
                                .font(.footnote)
                                .fontWeight(.heavy)
                                .foregroundStyle(Color.gray)
                                .frame(width: 28, height: 28, alignment: .center)
                                .background(Color.white.cornerRadius(5))
                                .background(
                                    RoundedRectangle(cornerRadius: 5)
                                        .stroke(Color.gray, lineWidth: 2))
                        }) // End of Buttom
                    } // End of Loop
                }) // End of HStack Button
            }) // End of VStack Trims
        }) // End of HStack Body
    }
}

// Mark: - Preview
#Preview {
    RatingsTrimsDetailView()
        .padding()
}
