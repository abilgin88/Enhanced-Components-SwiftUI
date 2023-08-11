//
//  MotionAnimationView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/9/23.

import SwiftUI

struct MotionAnimationView: View {
    
    // MARK: - Properties
    
    @State private var randomCircle = Int.random(in: 12...16)
    @State private var isAnimating: Bool = false
    
    var foregroundColor: Color // Add a parameter for foreground color
    
    // MARK: - Body
    
    var body: some View {
        GeometryReader { geometry in
            ZStack {
               // Color.motionBackground
                
                ForEach(0...randomCircle, id: \.self) { item in
                    Circle()
                        .foregroundColor(foregroundColor)
                        .frame(width: AnimationRandomHelpers.randomSize(), height: AnimationRandomHelpers.randomSize(), alignment: .center)
                        .position(
                            x: AnimationRandomHelpers.randomCoordinate(max: geometry.size.width),
                            y: AnimationRandomHelpers.randomCoordinate(max: geometry.size.height)
                        )
                        .animation(
                            Animation.interpolatingSpring(stiffness: 0.5, damping: 0.5)
                                .repeatForever()
                                .speed(AnimationRandomHelpers.randomSpeed())
                                .delay(AnimationRandomHelpers.randomDelay()),
                            value: isAnimating
                        )
                        .randomOpacityAndScale()
                        .onAppear(perform: {
                            isAnimating = true
                        })
                }
            }
            .drawingGroup() // Optimizes rendering performance
        }
    }
}

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        MotionAnimationView(foregroundColor: Color.motionForeground)
    }
}

