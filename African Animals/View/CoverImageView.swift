//
//  CoverImageView.swift
//  African Animals
//
//  Created by Prince Bottoman on 2022/06/19.
//

import SwiftUI

struct CoverImageView: View {
//  Mark: PROPERTIES
    let coverImages: [CoverImage] =  Bundle.main.decode("covers.json")
    
//  Mark: BODY
    var body: some View {
        TabView{
            ForEach (coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
                    
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .cornerRadius(15)
    }
}

//  Mark: PREVIEW

struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 280))
    }
}
