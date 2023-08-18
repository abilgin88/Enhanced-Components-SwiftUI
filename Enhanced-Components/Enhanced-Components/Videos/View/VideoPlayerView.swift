//
//  VideoPlayerView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/16/23.

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK: - Properties
    var videoSelected: String // The name of the selected video file
    var videoTitle: String // The title of the video
    
    // MARK: - Body
    var body: some View {
        // Using VideoPlayer view to display the video
        VideoPlayer(player: playVideo(fileName: videoSelected, fileFormat: "mp4"))
    }
}

// MARK: - Preview
struct VideoPlayerView_Previews: PreviewProvider {
    static var exercises: [Exercise] = Bundle.main.decode("exercises.json")
    static var previews: some View {
        // Previewing the VideoPlayerView with a specific video title
        VideoPlayerView(videoSelected: exercises[2].name, videoTitle: "lion")
    }
}
