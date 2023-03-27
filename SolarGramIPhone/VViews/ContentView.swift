//
//  ContentView.swift
//  SolarGram
//
//  Created by Andrew Chang on 2/27/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selection: Tab = .photos
    
    enum Tab {
           case photos
           case profile
       }
    
    @StateObject var viewModel: PublicPostViewModel = PublicPostViewModel()
    @State private var showImagePicker = false
    @State private var showCameraPicker = false
    
    
    var body: some View {
    
        TabView(selection: $selection) {
            PhotoList()
                .environmentObject(viewModel)
                .tabItem {
                    Label("Photos", systemImage: "photo.stack")
                }
                .tag(Tab.photos)
                .overlay(
                    ZStack {
                        Rectangle()
                            .frame(height: 60)
                            .foregroundColor(.white)
                        HStack{
                            Button {
                                showImagePicker.toggle()
                            } label: {
                                Image(systemName: "photo")}
                            .foregroundColor(.black)
                            
                            Button {
                                showCameraPicker.toggle()
                            } label: {
                                Image(systemName: "camera")}
                            .foregroundColor(.black)
                        }
                    }
                        ,
                    alignment: .bottom
                    )
            ProfileView()
                .environmentObject(viewModel)
                .tabItem {
                    Label("Profile", systemImage: "person.crop.circle")
                }
                .tag(Tab.profile)
            
        }

        .sheet(isPresented: $showImagePicker) {
            ImagePicker(viewModel: PublicPostViewModel())
        }
        .sheet(isPresented: $showCameraPicker) {
            ImagePicker(viewModel: PublicPostViewModel())
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(PublicPostViewModel())
    }
}
