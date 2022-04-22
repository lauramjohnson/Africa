//
//  VideoListView.swift
//  Africa
//
//  Created by Laura Johnson on 4/17/22.
//

import SwiftUI

struct VideoListView: View {
    // MARK:  - Properties
    @State var videos: [Video] = Bundle.main.decode("videos.json")
    
    let hapticImpact = UIImpactFeedbackGenerator(style: .medium)
    
    // MARK:  - Body
    var body: some View {
        NavigationView {
            List {
                ForEach(videos) { video in
                    NavigationLink(destination: VideoPlayerView(video: video)) {
                        VideoListItemView(video: video)
                            .padding(.vertical, 8)
                    }
                }
            }
            .listStyle(InsetGroupedListStyle())
            .navigationBarTitle("Videos", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // shuffle videos
                        videos.shuffle()
                        hapticImpact.impactOccurred()
                    }) {
                        Image(systemName: "shuffle.circle")
                    }
                }
            }
        }
    }
}

struct VideoListView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
