//
//  ImageGalleryView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/12/23.

// Import the SwiftUI framework
import SwiftUI

// Define the ImageGalleryView struct
struct ImageGalleryView: View {
    
    // MARK: - Properties
    
    // Load plant data from a JSON file
    let plants: [Plant] = Bundle.main.decode("plants.json")
    
    // State variable to keep track of the selected plant image name
    @State var selectedPlant: String = "sunflower"
    
    // State variable to define the grid layout of the gallery
    @State var gridLayout: [GridItem] = [GridItem(.flexible())]
    
    // State variable to control the number of grid columns using a slider
    @State private var gridColumn: Double = 3.0
    
    // Create a UIImpactFeedbackGenerator for haptic feedback
    let haptics = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK: - Body
    
    var body: some View {
        // Scroll view containing the gallery content
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 30) {
                // Display the selected plant image
                PlantImageView(imageName: selectedPlant, lineWidth: 8, strokeColor: .white)
                
                // Slider to adjust the number of grid columns
                SliderView(gridColumn: $gridColumn)
                    .onChange(of: gridColumn) { value in
                        withAnimation(.easeIn) {
                            gridSwitch(gridColumn: gridColumn)
                        }
                    }
                
                // Grid of plant images
                LazyVGrid(columns: gridLayout, alignment: .center, spacing: 10) {
                    ForEach(plants) { item in
                        // Display individual plant images in the grid
                        PlantImageView(imageName: item.image, lineWidth: 1, strokeColor: .white)
                            .onTapGesture {
                                withAnimation(.easeIn) {
                                    selectedPlant = item.image
                                }
                                // Provide haptic feedback on tap
                                haptics.impactOccurred()
                            }
                    } //: Loop
                } //: Grid
                .onAppear(perform: {
                    // Set initial layout and randomize selected plant image
                    randomizeImage()
                    gridSwitch(gridColumn: gridColumn)
                })
            } //: VStack
            .padding(.horizontal, 10)
            .padding(.vertical, 50)
        } //: Scroll
        .frame(maxWidth: .infinity, maxHeight: .infinity)
    }
}

// Preview for the ImageGalleryView
struct ImageGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        // Preview the ImageGalleryView with a dark color scheme
        ImageGalleryView()
            .preferredColorScheme(.dark)
    }
}
