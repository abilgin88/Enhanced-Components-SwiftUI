//
//  LogoView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct LogoView: View {
    var textLeft: String
    var textRight: String
    var logo: String
    
    var body: some View {
        HStack(spacing: 8) {
            // MARK: - Left Text
            Text(textLeft.uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.TextColor) // Use the defined textColor
            
            // MARK: - Logo Image
            Image(systemName: logo)
                .resizable()
                .scaledToFit()
                .foregroundColor(.teal) // Use the defined teal color
                .frame(width: 30, height: 30, alignment: .center)
            
            // MARK: - Right Text
            Text(textRight.uppercased())
                .font(.title3)
                .fontWeight(.black)
                .foregroundColor(.TextColor) // Use the defined textColor
        }
    }
}

struct LogoView_Previews: PreviewProvider {
    static var previews: some View {
        LogoView(textLeft: "Navigation", textRight: "Bar", logo: "globe")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

