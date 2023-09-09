//
//  GridView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct GridView: View {
    
    var body: some View {
        // MARK: - ScrollView for Categories
        ScrollView(.horizontal, showsIndicators: false, content: {
            // MARK: - Lazy Grid for Categories
            LazyHGrid(rows: gridLayout, alignment: .center, spacing: colomnSpacing, pinnedViews: [], content: {
                // MARK: - Category Section
                Section(
                    header: SectionView(rotateClockwise: false),
                    footer: SectionView(rotateClockwise: true)
                ) {
                    // MARK: - Category Items
                    ForEach(sficons) { icon in
                        ItemView(sficons: icon)
                    }
                }
            })
        }) // End of ScrollView
        .frame(height: 140)
        .padding(.horizontal, 15)
        .padding(.vertical, 10)
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.BackgroundColor)
    }
}
