//
//  UserPhoto.swift
//  SolarGram
//
//  Created by Andrew Chang on 3/5/23.
//

import SwiftUI



struct UserPhoto: View {
    
    
    var body: some View {
        Image ("Andrew")
            .resizable()
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 2)
            }
    }
}

struct UserPhoto_Previews: PreviewProvider {
    static var previews: some View {
        UserPhoto()
    }
}
