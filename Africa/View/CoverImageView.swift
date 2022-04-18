//
//  CoverImageView.swift
//  Africa
//
//  Created by Laura Johnson on 4/17/22.
//

import SwiftUI

struct CoverImageView: View {
    // MARK:  - properties
    
    // MARK:  - body
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("cover-lion")
                    .resizable()
                .scaledToFit()
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
