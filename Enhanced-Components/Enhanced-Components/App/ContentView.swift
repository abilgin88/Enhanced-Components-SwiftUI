//
//  ContentView.swift
//  Enhanced-Components
//
//  Created by Abdullah Bilgin on 8/9/23.
//

import SwiftUI

struct ContentView: View {
    
    let components: [Components] = Bundle.main.decode("components.json")

    var body: some View {
        LondonPlacesView()
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
