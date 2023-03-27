//
//  ViewModel.swift
//  SolarGramIPhone
//
//  Created by Andrew Chang on 3/25/23.
//

import SwiftUI

class PostViewModel: ObservableObject {
    
    // MARK: - Connection to the Model
    
    @Published private var model: PublicPosts = PublicPosts()
    
    
    // MARK: - Public vars available to the View
    
    var Posts: [Post] {
        model.sampleData
    }
    
    
    
    mutating func removePost(_ post: Post) {
        let postIndex = model.sampleData.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else {return}
        
        model.sampleData.remove(at: actualIndex)
    }
    
    mutating func addPost(_ post: Post, image: UIImage?) {
        let newPost = Post(photoID: post.photoID, description: post.description, isFavorite: post.isFavorite, author: post.author)
        
        model.sampleData.append(newPost)
    }
}
    
//    func removePostFrom(_ post: Post){
//        model.removePost(post)
//    }
//    
//    func addPostFrom(image: UIImage?) {
//    
//    // make sure the optional is an actual image
//    guard let image else {return}
//    
//    // you must do this on main thread for UI to update properly
//    DispatchQueue.main.async {
//        // create a new post object, it might look like this, but you can adapt as needed in your project.
//        let newPost = Post(photoID: Image(uiImage: image), description: "Something New", isFavorite: false, author: User.currentUser)
//
//        // call some function on the model to add the new post to the array of posts, you can do this how you like, but the logic should be in the model
//        self.model.add(post: newPost)
//    }

    
