//
//  PhotoRow.swift
//  SolarGramIPhone
//
//  Created by Andrew Chang on 3/25/23.
//

import SwiftUI

struct PhotoRow: View {
    
    @EnvironmentObject var viewModel: PublicPostViewModel
    
    //Removed Binding
    var post: Post
    
    
    private let authorImageHeight: CGFloat = 30
    
    var body: some View {
        VStack(alignment: .leading) {
            authorView
            SquareImage(Image(post.photoID))
            descriptionView
            actionView
            #if os(macOS)
            Divider()
                .padding(.vertical)
            #endif
        }
    }
    
    var authorView: some View {
        HStack {
            SquareImage(Image(post.author.photoID))
                .frame(height: authorImageHeight)
                .clipShape(Circle())
            Text(post.author.name)
                .font(.headline)
        }
        .padding(.leading, 8)
    }
    
    var actionView: some View {
        HStack {
            Button {
                viewModel.toggleFavorite(post: post)
            } label: {
                if post.isFavorite {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            }
                .buttonStyle(.plain)
            Spacer()
            Button {
                viewModel.removePost(post: post)
            } label: {
                if post.author.id == PublicPosts.currentUser.id {
                    Image(systemName: "trash")
//                } else {
                    
                }
            }
                .buttonStyle(.plain)

        }
        .padding(.leading, 8)
    }
    
    var descriptionView: some View {
        Text(post.description)
            .font(.caption)
            .padding(.leading, 8)
            .padding(.bottom, 8)

    }
}

struct PhotoRow_Previews: PreviewProvider {
    static var previews: some View {
//        PhotoRow(post: .constant(PublicPosts.sampleData[1]))
        
        let test = Post(photoID: "photo1", description: "Something really great", author: PublicPosts.currentUser, image: UIImage (named: "photo1"))
        
        PhotoRow(post: test)
            .environmentObject(PublicPostViewModel())

    }
}
