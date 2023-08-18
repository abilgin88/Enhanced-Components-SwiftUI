//
//  VideoGalleryListView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/15/23.

import SwiftUI

struct VideoGalleryListView: View {
    // MARK: - Properties
    // Loading exercises from "exercises.json"
    @State var exercises: [Exercise] = Bundle.main.decode("exercises.json")
    
    // MARK: - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(exercises) { exercise in
                    // Navigating to the VideoPlayerView when an exercise is tapped
                    NavigationLink(destination: VideoPlayerView(videoSelected: exercise.name, videoTitle: exercise.name)) {
                        ExerciseListItemView(exercise: exercise)
                            .padding(.vertical, 8)
                    }
                } //: Loop
            } //: List
            .listStyle(InsetGroupedListStyle()) // Applying a specific list style
            .navigationBarTitle("Exercises", displayMode: .inline) // Setting the navigation bar title
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        exercises.sort { $0.name < $1.name }
                    }) {
                        Image(systemName: "arrow.up.arrow.down")
                    }
                    .foregroundColor(.SuccessColor)
                }
            } //: Toolbar
        } //: Navigation
    }
}

// MARK: - Preview
struct VideoGalleryListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoGalleryListView()
            .preferredColorScheme(.dark)
    }
}

