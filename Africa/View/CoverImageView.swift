//
//  CoverImageView.swift
//  Africa
//
//  Created by Laura Johnson on 4/17/22.
//

import SwiftUI

struct CoverImageView: View {
    // MARK:  - properties
    let coverImages: [CoverImage] = Bundle.main.decode("covers.json")
    
    // MARK:  - body
    var body: some View {
        TabView {
            ForEach(coverImages) { item in
                Image(item.name)
                    .resizable()
                    .scaledToFill()
            }
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

// MARK:  - preview
struct CoverImageView_Previews: PreviewProvider {
    static var previews: some View {
        CoverImageView()
            .previewLayout(.fixed(width: 400, height: 300))
    }
}
