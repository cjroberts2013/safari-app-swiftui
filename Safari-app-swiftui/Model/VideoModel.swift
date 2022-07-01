//
//  VideoModel.swift
//  Safari-app-swiftui
//
//  Created by Charles Roberts on 6/30/22.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String
    
    var thumbnail: String {
        "video-\(id)"
    }
}
