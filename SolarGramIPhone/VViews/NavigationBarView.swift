//
//  NavigationBarView.swift
//  SolarGramIPhone
//
//  Created by Andrew Chang on 3/5/23.
//

import SwiftUI

struct NavigationBarView: View {
    var body: some View {
        NavigationView{
            HStack {
                NavigationLink {
                    ContentView()
                } label: {
                    VStack {
                        Image(systemName: "house")
                            .font(.subheadline)
                        Text("Home")

                    }
                    .foregroundColor(.black)
                }
                NavigationLink {
                    ProfileView()
                } label: {
                    VStack {
                        Image(systemName: "person")
                            .font(.subheadline)
                        Text("Profile")
                        //
                    }
                    .foregroundColor(.black)
                    .padding()
                    //
                }
            }
        }
    }
}


struct NavigationBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationBarView()
    }
}
