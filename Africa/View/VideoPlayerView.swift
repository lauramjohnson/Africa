//
//  VideoPlayerView.swift
//  Africa
//
//  Created by Laura Johnson on 4/22/22.
//

import SwiftUI
import AVKit

struct VideoPlayerView: View {
    // MARK:  - Property
    var video: Video
    
    // MARK:  - Body
    var body: some View {
        VStack {
            VideoPlayer(player: playVideo(fileName: video.id, fileFormat: "mp4")) {
    //            Text(video.name)
            }
            .overlay(
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 32, height: 32)
                    .padding(.top, 6)
                    .padding(.horizontal, 8)
                ,alignment: .topLeading
            )
        }
        .accentColor(.accentColor)
        .navigationBarTitle(video.name, displayMode: .inline)
    }
}

struct VideoPlayerView_Previews: PreviewProvider {
    static let videos: [Video] = Bundle.main.decode("videos.json")
    static var previews: some View {
        NavigationView {
            VideoPlayerView(video: videos[3])
        }
    }
}
