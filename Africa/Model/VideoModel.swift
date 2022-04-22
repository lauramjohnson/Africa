//
//  VideoModel.swift
//  Africa
//
//  Created by Laura Johnson on 4/22/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    // MARK:  - computed property
    var thumbnail: String {
        "video-\(id)"
    }
}
