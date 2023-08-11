//
//  ContentView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/9/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            MotionAnimationView(foregroundColor: .motionForeground)
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
