//
//  BrowseTabView.swift
//  African Animals
//
//  Created by Prince Bottoman on 2022/06/19.
//

import SwiftUI

struct BrowseTabView: View {
    var body: some View {
        NavigationView{
            List{
                CoverImageView()
                    .listRowInsets(EdgeInsets(top: 0, leading:  0,bottom: 0, trailing: 0))
                    .frame(height:280)
            }
            .navigationBarTitle("African Animals", displayMode: .large)
        }
    }
}

struct BrowseTabView_Previews: PreviewProvider {
    static var previews: some View {
        BrowseTabView()
    }
}
