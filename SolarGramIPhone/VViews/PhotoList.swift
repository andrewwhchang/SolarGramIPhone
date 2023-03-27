//
//  PhotoList.swift
//  SolarGramIPhone
//
//  Created by Andrew Chang on 3/25/23.
//

import SwiftUI


struct PhotoList: View {
    
    @EnvironmentObject var viewModel: PublicPostViewModel
    
    var body: some View {
            List(viewModel.posts) { post in
            PhotoRow(post: post)
                .listRowInsets(EdgeInsets(top: 8, leading: 0, bottom: 8, trailing: 0))
        }
        .listStyle(.plain)
        }
}

struct PhotoList_Previews: PreviewProvider {
    static var previews: some View {
        PhotoList()
            .environmentObject(PublicPostViewModel())

    }
}
