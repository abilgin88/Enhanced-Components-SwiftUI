//
//  AdvancedGridShowcaseView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/18/23.

import SwiftUI

struct AdvancedGridShowcaseView: View {
    
    // MARK: - Properties
    var plants: [Plant] = Bundle.main.decode("plants.json")
    var haptic = UIImpactFeedbackGenerator(style: .medium)
    
    @State private var isGridViewActive: Bool = true
    @State private var gridLayout: [GridItem] = [GridItem(.flexible())]
    @State private var gridColumn: Int = 1
    @State private var toolbarIcon: String = "square.grid.2x2"
    
    func gridSwitch() {
        // Switch the grid layout and update grid column count
        gridLayout = Array(repeating: .init(.flexible()), count: gridLayout.count % 3 + 1)
        gridColumn = gridLayout.count
        
        // Update the toolbar icon based on the current grid column count
        switch gridColumn {
        case 1:
            toolbarIcon = "square.grid.2x2"
        case 2:
            toolbarIcon = "square.grid.3x2"
        case 3:
            toolbarIcon = "rectangle.grid.1x2"
        default:
            toolbarIcon = "square.grid.2x2"
        }
    }
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            Group {
                // Display either a List or a Grid based on isGridViewActive
                if !isGridViewActive {
                    List {
                        CoverImageView()
                            .frame(height: 300)
                            .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                        
                        ForEach(plants) { item in
                            PlantListItemView(plant: item)
                        }
                    }
                } else {
                    ScrollView(.vertical, showsIndicators: false) {
                        // Display a LazyVGrid with the chosen grid layout
                        LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                            ForEach(plants) { item in
                                PlantGridItemView(plant: item)
                            } //: Loop
                        } //: Grid
                        .padding()
                    } //: Scroll
                } //: Condition
            } //: Group
            .navigationBarTitle("Plants", displayMode: .large)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {ç   
                        // Button to switch to List view
                        Button(action: {
                            isGridViewActive = false
                            haptic.impactOccurred()
                        }) {
                            Image(systemName: "square.fill.text.grid.1x2")
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .PrimaryColor : .SecondaryColor)
                        }
                        
                        // Button to switch to Grid view
                        Button(action: {
                            isGridViewActive = true
                            haptic.impactOccurred()
                            gridSwitch()
                        }) {
                            Image(systemName: toolbarIcon)
                                .font(.title2)
                                .foregroundColor(isGridViewActive ? .SecondaryColor : .PrimaryColor)
                        }
                    } //: HStack
                }
            }
        } //: Navigation
    }
}

// MARK: - Preview
struct AdvancedGridShowcaseView_Previews: PreviewProvider {
    static var previews: some View {
        AdvancedGridShowcaseView()
    }
}

