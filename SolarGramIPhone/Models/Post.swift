//
//  Post.swift
//  SolarGramIPhone
//
//  Created by Andrew Chang on 3/25/23.
//

import SwiftUI

struct Post: Identifiable {
    let id: UUID = UUID()
    let photoID: String
    let description: String
    var isFavorite: Bool = false
    let author: User
    let image: UIImage?
}

struct User: Identifiable {
    let id: UUID = UUID()
    let name: String
    let photoID: String
}

