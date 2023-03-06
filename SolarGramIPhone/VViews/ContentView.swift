//
//  ContentView.swift
//  SolarGram
//
//  Created by Andrew Chang on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    //    @EnvironmentObject var modelData: ModelData
    
    var body: some View {
        ScrollView {
            ForEach (photoList, id: \.id) { photo in
                PhotoView(photo: photo)
            }
        }
        .ignoresSafeArea(edges: .leading)
        .ignoresSafeArea(edges: .trailing)
//        .padding()
        
    }
}

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {
        ContentView()
//            .environmentObject(ModelData())
    }
}
