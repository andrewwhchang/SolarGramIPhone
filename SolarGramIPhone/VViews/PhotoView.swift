//
//  PhotoView.swift
//  SolarGram
//
//  Created by Andrew Chang on 3/4/23.
//

import SwiftUI

struct PhotoView: View {
    
    var photo: Photo
    
    
    var body: some View {
//        ScrollView {
//            VStack (alignment: .leading){
//                HStack {
//
//                    UserPhoto()
//                        .frame(width: 50, height: 50)
//                    Text(photo.account)
//                        .font(.title)
//
//                }
//                Image(photo.name)
//                    .resizable()
//                    .frame(width: 300, height: 300)
//                    .clipShape(Rectangle())
//                Text(photo.description)
//
//                if photo.isLiked {
//                    Image(systemName: "heart.fill")
//                        .foregroundColor(.pink)
//                }
//                else { Image(systemName: "heart")
//
//                }
//
//
//
//            }
//
//        }
        
//        LazyVGrid {
            VStack (alignment: .leading){
                HStack {
                    
                    UserPhoto()
                        .frame(width: 50, height: 50)
                    Text(photo.account)
                        .font(.title)
                    
                }
                Image(photo.name)
                    .resizable()
                    .frame(width: 300, height: 300)
                    .clipShape(Rectangle())
                Text(photo.description)
                
                if photo.isLiked {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.pink)
                }
                else { Image(systemName: "heart")
                    
                }
                
                
                
            }
            .scaledToFill()
//        }
    }
}


struct PhotoView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoView(photo: photoList[0])
//            .environmentObject(ModelData())
    }
}


