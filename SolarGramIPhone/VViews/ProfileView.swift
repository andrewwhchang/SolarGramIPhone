//
//  ProfileView.swift
//  SolarGram
//
//  Created by Andrew Chang on 3/5/23.
//


import SwiftUI

struct ProfileView: View {
        
    @EnvironmentObject var viewModel: PublicPostViewModel
    

//    Moved to View Model
//    let posts = PublicPosts.sampleData.filter { post in
//        post.author.id == PublicPosts.currentUser.id
//    }

    private let headerHeight: CGFloat = 120
    
    var body: some View {
        VStack {
            headerView
            GridPhotoView(posts: viewModel.currentUsersPosts)
        }
    }
    
    var headerView: some View {
        VStack {
            SquareImage(Image(PublicPosts.currentUser.photoID))
                .clipShape(Circle())
            Text(PublicPosts.currentUser.name)
                .font(.title)
        }
        .frame(height: headerHeight)
        .padding()
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
            .environmentObject(PublicPostViewModel())

    }
}
