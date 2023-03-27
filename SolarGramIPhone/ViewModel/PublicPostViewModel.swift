//
//  PublicPostViewModel.swift
//  SolarGram
//
//  Created by Andrew Chang on 3/26/23.
//

import SwiftUI

class PublicPostViewModel: ObservableObject {
    
    // MARK: - Connection to the Model
    
    @Published private var model: PublicPosts = PublicPosts()
    
    
    // MARK: - Public vars available to the View
    
    var posts: [Post] {
        model.sampleData
    }
    
    var currentUsersPosts: [Post] {
        let filteredPosts = model.sampleData.filter { post in
            post.author.id == PublicPosts.currentUser.id
        }
        return filteredPosts.reversed()
    }
    
//    func addPost(post: Post) {
//        model.addPost(post, image: UIImage?)
//    }
    
    func removePost(post: Post) {
        model.removePost(post)
    }
    func toggleFavorite(post: Post) {
        model.toggleFavorite(post)
    }
    
    func addPostFrom(image: UIImage?) {

        // make sure the optional is an actual image
        guard let image else {return}

        // you must do this on main thread for UI to update properly
        DispatchQueue.main.async {
            // create a new post object, it might look like this, but you can adapt as needed in your project.
            let newPost = Post(photoID: UUID().uuidString , description: "Something New", isFavorite: false, author: PublicPosts.currentUser, image: UIImage(named: UUID().uuidString))

            // call some function on the model to add the new post to the array of posts, you can do this how you like, but the logic should be in the model
            self.model.addPost(newPost, image: image)
        }
    }
    
    
}
