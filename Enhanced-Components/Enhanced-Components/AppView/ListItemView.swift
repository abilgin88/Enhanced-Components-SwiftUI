//
//  ListItemView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/13/23.

import SwiftUI

struct ListItemView: View {
    
    let components: Components
    
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            Image(components.image)
                .resizable()
                .scaledToFill()
                .frame(width: 60, height: 60)
                .clipShape(RoundedRectangle(cornerRadius: 6 ))
                .overlay(
                    RoundedRectangle(cornerRadius: 6)
                        .stroke(Color.SecondaryColor , lineWidth: 3)
                )
            
            VStack(alignment: .leading, spacing: 4) {
                Text(components.name)
                    .font(.title3)
                    .fontWeight(.heavy)
                    .foregroundColor(.SecondaryColor)

                Text(components.id)
                    .font(.footnote)
                    .multilineTextAlignment(.leading)
                    .lineLimit(2)
                    .padding(.trailing, 8)
                    .foregroundColor(.WarningColor)
            } //: VSTACK
        } //: HSTACK
    }
}

struct ListItemView_Previews: PreviewProvider {
    static var components: [Components] = Bundle.main.decode("components.json")
    static var previews: some View {
        ListItemView(components: components[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color("BackgroundColor"))
    }
}
