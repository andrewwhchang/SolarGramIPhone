//
//  Photos.swift
//  SolarGram
//
//  Created by Andrew Chang on 3/4/23.
//

import Foundation
import SwiftUI

protocol Photo{
    var name: String { get }
    var id: Int { get }
    var account: String { get }
    var description: String { get }
    var isLiked: Bool { get }
    var image: Image { get }

}

struct Photo1: Photo {
    var id = 1
    var account = "Andrew"
    var description = "Here is my first post"
    var isLiked = false
    var name = "Solargram1"
    var image = Image("Solargram1")
    }


struct Photo2: Photo {
    var id = 2
    var account = "Andrew"
    var description = "Here is my second post"
    var isLiked = true
    var name = "Solargram2"
    var image = Image("Solargram2")
    }

struct Photo3: Photo {
    var id = 3
    var account = "Andrew"
    var description = "Here is my third post"
    var isLiked = false
    var name = "Solargram3"
    var image = Image("Solargram3")
    }

struct Photo4: Photo {
    var id = 4
    var account = "Andrew"
    var description = "Here is my fourth post"
    var isLiked = false
    var name = "Solargram4"
    var image = Image("Solargram4")
    }

struct Photo5: Photo {
    var id = 5
    var account = "Andrew"
    var description = "Here is my fifth post"
    var isLiked = false
    var name = "Solargram5"
    var image = Image("Solargram5")
    }

struct Photo6: Photo {
    var id = 6
    var account = "Andrew"
    var description = "Here is my sixth post"
    var isLiked = false
    var name = "Solargram6"
    var image = Image("Solargram6")
    }




//struct Photo {
//    var id = [0,1,2,3,4,5]
//    var account = "Andrew"
//    var description = "Here is my description"
//    var isLiked = [false, false, false, false, false, false]
//    var name = ["SolarGram1","SolarGram2","SolarGram3","SolarGram4","SolarGram5","SolarGram6"]
//    var image = [Image("SolarGram1"),Image("SolarGram2"),Image("SolarGram3"),Image("SolarGram4"),Image("SolarGram5"),Image("SolarGram6")]
//    }
//
//var photos: [Photo]

//let photoList = [Image("SolarGram1"),Image("SolarGram2"),Image("SolarGram3"),Image("SolarGram4"),Image("SolarGram5"),Image("SolarGram6")]

