//
//  ItemView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 9/9/23.
//

import SwiftUI

struct ItemView: View {
    let sficons: SFSymbol
    
    var body: some View {
        Button(action: {}, label: {
            HStack(alignment: .center, spacing: 6) {
                Image(systemName: sficons.icon)
                    .renderingMode(.template)
                    .resizable()
                    .scaledToFit()
                    .frame(width: 30, height: 30, alignment: .center)
                    .foregroundColor(.gray)
                
                Text(sficons.category.uppercased())
                    .fontWeight(.light)
                    .foregroundColor(.gray)
                
                Spacer()
            } // Enf of HStack
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12)
                    .stroke(Color.gray, lineWidth: 1)
            )
        }) // End of Button
    }
}

struct ItemView_Previews: PreviewProvider {
    static var previews: some View {
        ItemView(sficons: sficons[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.BackgroundColor)
    }
}
