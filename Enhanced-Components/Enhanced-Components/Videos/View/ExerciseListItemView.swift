//
//  ExerciseListItemView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/15/23.

import SwiftUI

// Defining a SwiftUI view for displaying an exercise item
struct ExerciseListItemView: View {
    // MARK: - Properties
    let exercise: Exercise // The exercise object to display
    
    // MARK: - Body
    var body: some View {
        HStack(spacing: 10) {
            ZStack {
                // Displaying the exercise thumbnail image
                Image(exercise.thumbnail)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 60)
                    .cornerRadius(9)
                // Displaying a play button icon over the thumbnail
                Image(systemName: "play.circle")
                    .resizable()
                    .scaledToFit()
                    .frame(height: 28)
                    .shadow(radius: 4)
                    .foregroundColor(.white)
                    .opacity(0.6)
            } //: ZStack
            
            VStack(alignment: .leading, spacing: 10) {
                // Displaying the exercise name
                Text(exercise.name)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(.SuccessColor)
                
                // Displaying the exercise description with a maximum of two lines
                Text(exercise.description)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
            } //: VStack
        } //: HStack
    }
}

// MARK: - Preview
struct ExerciseListItemView_Previews: PreviewProvider {
    static var exercises: [Exercise] = Bundle.main.decode("exercises.json")
    static var previews: some View {
        // Previewing the ExerciseListItemView with a specific exercise
        ExerciseListItemView(exercise: exercises[2])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

