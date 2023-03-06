//
//  ProfileView.swift
//  SolarGram
//
//  Created by Andrew Chang on 3/5/23.
//

import SwiftUI

struct ProfileView: View {
//    @EnvironmentObject var modelData: ModelData
    
    let columns = [
           GridItem(),
           GridItem(),
           GridItem()
    ]
    
    var body: some View {
        
        VStack {
            UserPhoto()
                .frame(width: 100, height: 100)
            Text("Andrew")
                .font(.title)
            ScrollView {
                LazyVGrid(columns: columns, spacing: 5) {
                    ForEach (photoList, id: \.id) { photo in
                        Image(photo.name)
                            .resizable()
                            .frame(width: 130, height: 130)
                            .clipShape(Rectangle())
                    }
                }
            }
        }
        
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
//        .environmentObject(ModelData())
    }
}
