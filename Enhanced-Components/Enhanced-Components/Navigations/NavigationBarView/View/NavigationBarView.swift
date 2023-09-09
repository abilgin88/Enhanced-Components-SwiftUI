//
//  NavigationBarView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct NavigationBarView: View {
    // MARK: - Properties
    var LeftIcon: String
    var RightIcon: String
    
    @State private var isAnimated: Bool = false

    // MARK: - Body
    var body: some View {
        HStack {
            // MARK: - Search Button
            Button(action: {}, label: {
                Image(systemName: LeftIcon)
                    .font(.title)
                    .foregroundColor(.teal)
            }) // End of Button
            
            Spacer()

            // MARK: - Logo
            LogoView(textLeft: "Navigation", textRight: "Bar", logo: "note.text")
                .opacity(isAnimated ? 1 : 0)
                .offset(x: 0, y: isAnimated ? 0 : -25)
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 0.5)) {
                        isAnimated.toggle()
                    }
                })

            Spacer()

            // MARK: - Cart Button
            Button(action: {}, label: {
                Image(systemName: RightIcon)
                    .font(.title)
                    .foregroundColor(.teal)
            }) // End of Button
        } // End of HStack
    }
}

// MARK: - Preview
struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView(LeftIcon: "pencil", RightIcon: "eraser")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

