//
//  ContentViewNB.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct ContentViewNB: View {
    var body: some View {
        ZStack {
            Color.BackgroundColor.ignoresSafeArea()
            VStack(spacing: 0) {
                // MARK: - Navigation Bar
                NavigationBarView(
                    LeftIcon: "pencil",
                    RightIcon: "eraser"
                )
                .padding(.horizontal, 15)
                .padding(.bottom)
                .shadow(color: Color.SecondaryColor.opacity(0.05), radius: 5, x: 0, y: 5)
                
                Spacer()
                Text("Footer")
            }
        } // End of VStack
    }
}

struct ContentViewNB_Previews: PreviewProvider {
    static var previews: some View {
        ContentViewNB()
    }
}

