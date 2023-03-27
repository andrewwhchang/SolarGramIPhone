//
//  PublicPosts.swift
//  SolarGramIPhone
//
//  Created by Andrew Chang on 3/25/23.
//

import Foundation
import UIKit

struct PublicPosts {
    
    static let currentUser: User = User(name: "Andrew", photoID: "Andrew")
            
    var sampleData: [Post] = [
        Post(photoID: "photo1", description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo1")),
        Post(photoID: "photo2", description: "Something really great", author: User(name: "Joe", photoID: "joe"), image: UIImage(named: "photo2")),
        Post(photoID: "photo3", description: "Something really great", author: User(name: "Sally", photoID: "sally"), image: UIImage(named: "photo3")),
        Post(photoID: "photo4", description: "Something really great", author: User(name: "Jill", photoID: "jill"), image: UIImage(named: "photo4")),
        Post(photoID: "photo5", description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo5")),
        Post(photoID: "photo6", description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo6")),
        Post(photoID: "photo7", description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo7")),
        Post(photoID: "photo8", description: "Something really great", author: PublicPosts.currentUser, image: UIImage(named: "photo8"))

    ]
    
    


    
        mutating func removePost(_ post: Post) {
                let postIndex = sampleData.firstIndex { p in
                    p.id == post.id
                }
                guard let actualIndex = postIndex else {return}
    
                sampleData.remove(at: actualIndex)
            }
    
        mutating func addPost(_ post: Post, image: UIImage?) {
            let newPost = Post(photoID: post.photoID, description: post.description, isFavorite: post.isFavorite, author: post.author, image: post.image)

            sampleData.append(newPost)
        }
    
        mutating func toggleFavorite(_ post: Post) {
                let postIndex = sampleData.firstIndex { p in
                    p.id == post.id
                }
                guard let actualIndex = postIndex else { return }
                
                sampleData[actualIndex].isFavorite.toggle()
            }
    
        

}
