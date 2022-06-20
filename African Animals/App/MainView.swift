//
//  MainView.swift
//  African Animals
//
//  Created by Prince Bottoman on 2022/06/19.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        //Tabview
        TabView {
            BrowseTabView()
                .tabItem() {
                    Image(systemName: "square.grid.2x2.fill")
                    Text("Browse")
                }
            
            VideosTabView()
                .tabItem() {
                    Image(systemName: "play.tv.fill")
                    Text("Videos")
                }
            
            GalleryTabView()
                .tabItem() {
                    Image(systemName: "photo.fill")
                    Text("Gallery")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
