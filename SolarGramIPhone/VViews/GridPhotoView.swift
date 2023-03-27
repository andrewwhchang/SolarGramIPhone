//
//  GridPhotoView.swift
//  SolarGramIPhone
//
//  Created by Andrew Chang on 3/25/23.
//

import SwiftUI

struct GridPhotoView: View {
    
    @EnvironmentObject var viewModel: PublicPostViewModel
    
    var posts: [Post]
    
    var body: some View {
        GeometryReader { geo in
            ScrollView {
                LazyVGrid(columns: [GridItem(.adaptive(minimum:geo.size.width/4))]) {
                    ForEach(posts) { post in
                        SquareImage(Image(post.photoID))
                    }
                }
            }
        }

    }
}

//struct GridPhotoView_Previews: PreviewProvider {
//    static var previews: some View {
//        GridPhotoView(posts: PublicPostViewModel.currentUsersPosts)
//            .environmentObject(PublicPostViewModel())
//
//    }
//}
